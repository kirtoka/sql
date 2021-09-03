USE [Loyalty]
GO
/****** Object:  StoredProcedure [dbo].[API_services_filtering_new_real_kirn]    Script Date: 30.06.2021 12:29:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		kirn
-- Create date:	2021-02-06
-- Description:	Процедура фильтрации данных Geo v2.0 (на основе процедур геосервиса и процедуры фильтрации - Krivenko + SAS)

-- MV 19.02.2021 Переключил на STRING_SPLIT
-- kvin 04.03.2021 Добавила кеш и параметр @Use_only_casch 
-- kvin 10.03.2021 Новый алгоритм маршрутов (переход на три таблицы) 
-- kvin 15.03.2021 Добавила SET CONTEXT_INFO 
-- kvin 17.03.2021 Изменила вывод при вызове из api_services_buttons 
-- kvin 19.03.2021 Изменила  типы данных полей 
-- kvin 26.03.2021 Убрала SET CONTEXT_INFO 
-- kvin 2021-04-01 Установка обновления. Фильтр по слоту
-- kvin 2021-04-02 Фильтрация по слоту. Отсев по времени приема заказов
-- kvin 2021-04-09 Сделала параметры координат не обязательными
-- kvin 2021-04-12 Добавила параметры в логирование
-- kvin 2021-05-13 Создание процедуры _new_real
-- kvin 2021-05-13 Добавление тестовой ветки
-- kvin 2021-05-17 Тестирование термолабильности
-- kvin 2021-05-20 Оптимизация
-- kvin 2021-06-01 Установка термолабильности, А-Б тест
-- kvin 2021-06-02 Установка термолабильности
-- kvin 2021-06-02 Откат
-- kvin 2021-06-03 Установка термолабильности
-- kvin 2021-06-03 Исправлен баг
-- kvin 2021-06-11 Тестирование формул онлайн-сервиса
-- kvin 2021-06-21 Убрала IDENTITY, Установка формул онлайн-сервиса
-- kirn 2021-06-25 Добавила ветку if для other_parameters формул онлайн-сервиса
--<LAST> kirn 2021-06-25 Добавила ветку if для other_parameters формул онлайн-сервиса </last>
-- =============================================
ALTER   PROCEDURE [dbo].[API_services_filtering_new_real_kirn]
	@latitude      numeric(18, 15) =0.0,
	@longitude     numeric(18, 15) =0.0,
	@number        char(7) 		 = NULL,   -- карта клиента
	@ShopNo        int           = NULL,   -- для самовывоза
	
	@date_test     datetime        = NULL, -- дата для расчета
	@id_cart       int             = NULL, -- номер корзины, если она уже есть
	@Device_type   [varchar](10)   = NULL, -- новое логирование
	@id_version    [varchar](50)   = NULL, -- новое логирование
	@id_screen     [varchar](50)   = NULL, -- новое логирование
	@id_element    [varchar](50)   = NULL, -- новое логирование
	@source        int             = 0,
	@str_par       varchar(max)    = '', 
	@RecalculateMode bit           = 0,    -- режим пересчета (0 - использовать КЭШ (если в КЭШе нет данных, рассчитывать гео2), 1 - рассчитывать  гео2)
	@id_session     UNIQUEIDENTIFIER = null,  -- ид сессии (для забора данных из физической таблицы api_services_filter)
	@exec_from_buttons bit         = 0,
	@only_exec     bit             = 0,    -- параметр для запуска без вывода данных в результате процедуры  
    @use_temporary_table bit       = 0,    -- Использовать временнную таблицу #api_services_filter (Объявляется во внешней процедуре и заполняется в текущей)
	--вариативный  параметр - три варианта: 
	   --указано значение - произойдет фильтрация по указанному
	   --NULL - параметр будет взят из заказа при его наличии, а если заказа нет, то фильтрация по этому параметру не произойдет
	   --0 или '' - параметр не будет взят из заказа при его наличии, фильтрация по этому параметру не произойдет
	@shop_str       varchar(max)= null,   --вариативный --фильтр по магазину
	@id_partner     int = null,           --вариативный --фильтр по партнеру
	@type_payment   tinyint = null,       --вариативный --фильтр по виду оплаты
	@id_service_str varchar(max) = null,  --вариативный --фильтр по сервису
	@time_slot_from time = null,          --вариативный --фильтр по слоту
	@time_slot_to   time = null,          --вариативный --фильтр по слоту
	@time_count     time = null,          --вариативный --фильтр по слоту
    @date_service   date = null,          --вариативный -- дата сервиса для фильтрации по слоту (сегодня/завтра) если не указать (и передан слот), то по умолчанию сегодня 
	@tov_str        varchar(max) = '',    --НЕ ИСПОЛЬЗОВАТЬ! Фильтрация по этому параметру отключена, необходимо использовать @tov_limiting_properties
	@id_order       int = Null,
	@Use_only_casch bit            = 0,    -- Отключить расчет гео (брать только из кеша) для ситуаций, когда сервер под нагрузкой
	@gettype_RequestMode bit       = 0,    -- режим для определения служб для конкурса такси (не учитывается отключение магазинов, окончание времени приемки заказов
	@tov_limiting_properties  varchar(50)    = null,    --вариативный-- Ограничивающие свойства товаров (Термолабильность, заморозка и т.д.)  
	@id_parcel      int = Null
AS
BEGIN
  SET NOCOUNT ON;

	Set @RecalculateMode = 1

  /*
  
    -- Блок параметров для тестирования
DECLARE
  	@latitude numeric(18,15) = 59.905321,  	
    @longitude numeric(18,15) =  30.342359,
	@number      char(7)       = 'C785580', -- из приложений обязательно его передавать
	@ShopNo        int             = NULL, -- для самовывоза
	@OnlyThisShop int			 = NULL,
	@date_test     datetime        = '2021-06-10T09:31:00', -- для теста
	@RecalculateMode bit           = 1, -- режим пересчета (0 - использовать КЭШ (если в КЭШе нет данных, рассчитывать гео), 1 - рассчитывать  гео)
	@id_session     UNIQUEIDENTIFIER = null,  -- ид сессии (для забора данных из физической таблицы api_services_filter)
	@exec_from_buttons bit = 0,
	@only_exec     bit             = 0,    -- параметр для запуска без вывода данных в результате процедуры  
    @use_temporary_table bit       = 0,    -- Использовать временнную таблицу #api_services_filter (Объявляется во внешней процедуре и заполняется в текущей)

	--параметры логирования
	@id_cart       int             = NULL, -- номер корзины, если она уже есть
    @Device_type   [varchar](10)   = NULL, 
	@id_version    [varchar](50)   =  NULL, 
	@id_screen     [varchar](50)   = NULL,
	@id_element    [varchar](50)   = NULL,  
	@source        int             = 0,
	@str_par       varchar(max)    = '',
	
	--Параметры фильтрации
	@shop_str       varchar(max)= null,--'1240,3713', 
	@id_partner     int = null,
	@type_payment   tinyint = null,
	@id_service_str varchar(max) = '',
	@time_slot_from time = '',
	@time_slot_to   time = '',
	@time_count     time = '',--'02:00:00',
	@date_service   date = '', --для фильтрации по слоту
	@tov_str        varchar(max) = '',
	@str_part       varchar(max) = '',
	@id_order       int =0,
	@Use_only_casch bit            = 0,    -- Отключить расчет гео (брать только из кеша) для ситуаций, когда сервер под нагрузкой
	@gettype_RequestMode bit       = 0,     -- режим для определения служб для конкурса такси (не учитывается отключение магазинов, окончание времени приемки заказов 
    @tov_limiting_properties  varchar(50)    = null,    --вариативный-- Ограничивающие свойства товаров (Термолабильность, заморозка и т.д.) 
    @id_parcel      int = Null
 
 --*/


 Begin try
 ----Отключить расчет гео (брать только из кеша) для ситуаций. когда сервер под нагрузкой
	--Set @Use_only_casch  = 1    Set @RecalculateMode = 0
if @latitude = 0 and @longitude = 0 Set @RecalculateMode = 1


  --передача верхних параметров 
    declare @s1 nvarchar(max) = '', @s2 nvarchar(max) = '' 
 Set @s1 = ',number,id_order,Device_type,id_version,id_screen,id_element,source,str_par'
 Set @s2 = ',' + isnull('''' + rtrim(replace(@number,char(39), char(34))) + '''','NULL') + '

,' + isnull('''' + rtrim(replace(@id_cart,char(39), char(34))) + '''','NULL') + '
,' + isnull('''' + rtrim(replace(@Device_type,char(39), char(34))) + '''','NULL') + '
,' + isnull('''' + rtrim(replace(@id_version,char(39), char(34))) + '''','NULL') + '
,' + isnull('''' + rtrim(replace(@id_screen,char(39), char(34))) + '''','NULL') + '
,' + isnull('''' + rtrim(replace(@id_element,char(39), char(34))) + '''','NULL') + '
,' + isnull('''' + rtrim(replace(@source,char(39), char(34))) + '''','NULL') + '
,''[{latitude}][{' +isnull(rtrim(replace(@latitude,char(39), char(34))),'NULL') + '}]
[{longitude}][{' +isnull(rtrim(replace(@longitude,char(39), char(34))),'NULL') + '}]
[{id_session}][{' +isnull(rtrim(replace(@id_session,char(39), char(34))),'NULL') + '}]
[{exec_from_buttons}][{' +isnull(rtrim(replace(@exec_from_buttons,char(39), char(34))),'NULL') + '}]
[{id_service_str}][{' +isnull(rtrim(replace(@id_service_str,char(39), char(34))),'NULL') + '}]
[{time_slot_from}][{' +isnull(rtrim(replace(@time_slot_from,char(39), char(34))),'NULL') + '}]
[{time_slot_to}][{' +isnull(rtrim(replace(@time_slot_to,char(39), char(34))),'NULL') + '}]
[{time_count}][{' +isnull(rtrim(replace(@time_count,char(39), char(34))),'NULL') + '}]
[{date_service}][{' +isnull(rtrim(replace(@date_service,char(39), char(34))),'NULL') + '}]
[{date_test}][{' +isnull(rtrim(replace(@date_test,char(39), char(34))),'NULL') + '}]
' + rtrim(replace (isnull(@str_par,''),char(39),char(39)+char(39)))  + ''''

	DECLARE @Date_add_log datetime = GETDATE(),
			@id_log int,
			@t_period int,
			@id_job_log int = @@PROCID,
			@b_id_log int = DB_ID(),
			@id int
	EXEC jobs.dbo.create_jobs_unique_id_proc_b_id @id_job_log,
												  @Date_add_log,
												  @s1,
												  @s2,
												  @@SPID,
												  @b_id_log,
												  @id = @id_log OUTPUT,
												  @t_period = @t_period OUTPUT  
  --конец верхних параметров


--begin try
--    --Тестирование нового алгоритма (Вызов тестовой процедуры)
	
--	--IF (RIGHT(@number,1) in ('8','9')
--	--	    and (LEFT(LTRIM(@number),1) LIKE '[a-z]' or LEFT(LTRIM(@number),1) LIKE '[0-9]')
--	--	   )
--	--	begin
--	--		exec ///

--	--		BEGIN
--	--			exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 0 ,@Date_add_log  OUTPUT, @id_log ,@t_period
--	--			return
--	--		END
--	--	end
--	IF --@number in( 'C785580','C799662','D022631','A227834','D184092','а298002')--'C799662','A227834','D184092','D022631'
--		EXISTS ( select 1 from vv03..mp_test_numbers (nolock)  
--				where number = @number
--				and a1 = 1
--				and Dev = 1)
--		or (RIGHT(@number,1) in ('1','2','3','4','5','6','7','8','9','0')
--		    and (LEFT(LTRIM(@number),1) LIKE '[a-z]' or LEFT(LTRIM(@number),1) LIKE '[0-9]')
--		   )
--        begin
--			exec [API_services_filtering_new_real_Dev]
--						@latitude      = @latitude,
--						@longitude     = @longitude,
--						@number        = @number,
--						@ShopNo        = @ShopNo,
--						@date_test     = @date_test ,
--						@id_cart       = @id_cart,
--						@Device_type   = @Device_type ,
--						@id_version    = @id_version,
--						@id_screen     = @id_screen,
--						@id_element    = @id_element,
--						@source        = @source,
--						@str_par       = @str_par,
--						@RecalculateMode = @RecalculateMode,
--						@id_session    = @id_session,
--						@exec_from_buttons = @exec_from_buttons,
--						@only_exec     = @only_exec,
--						@use_temporary_table = @use_temporary_table,
--						@shop_str       = @shop_str,
--						@id_partner     = @id_partner, 
--						@type_payment   = @type_payment,
--						@id_service_str = @id_service_str,
--						@time_slot_from = @time_slot_from,
--						@time_slot_to   = @time_slot_to,
--						@time_count     = @time_count,
--						@date_service   = @date_service,
--						@tov_str        = @tov_str,
--						@id_order       = @id_order,
--						@Use_only_casch = @Use_only_casch,
--						@gettype_RequestMode = @gettype_RequestMode,
--						@tov_limiting_properties   = @tov_limiting_properties,   
--						@id_parcel      = @id_parcel
			
			
--			BEGIN
--				exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 0 ,@Date_add_log  OUTPUT, @id_log ,@t_period
--				return
--			END
--		end
		
		 

--	end try
--	begin catch
--	end catch

--Begin TRY

	
DECLARE 
		 @proc_name as varchar(500)=DB_NAME() + '.' + OBJECT_SCHEMA_NAME(@@PROCID) + '.' + OBJECT_NAME(@@PROCID)
		,@error_message nvarchar(max)
		--,@DELAY char(100)
		--,@t_t char(1)
		,@XACT_STATE smallint,@TRANCOUNT smallint,
		  --@id_job AS int = 101,
          @mp bit = 1,         
		  @res int = -1,
		  @date datetime = Getdate(),
		  @cache_usage bit = 0


  DECLARE @sql_text nvarchar(4000)--,@d as datetime = getdate(), @ms2 int = 0
  declare @latitude_init  numeric(18, 15) = @latitude , @longitude_init   numeric(18, 15) = @longitude
  declare @latitude_shop  numeric(18, 15) ,  @longitude_shop numeric(18, 15)
  --declare @cache_usage bit

  --Округляем примерно до 10 метров
  SELECT
    @latitude = ROUND(ISNULL(@latitude, 0), 4)
  SELECT
    @longitude = ROUND(ISNULL(@longitude, 0), 4)
 SELECT
    @date_test = ISNULL(@date_test, GETDATE())
	
	SET  @XACT_STATE = XACT_STATE() SET @TRANCOUNT = @@TRANCOUNT
	exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 1 ,@Date_add_log  OUTPUT, @id_log ,@t_period,@XACT_STATE,@TRANCOUNT


	declare  @sql nvarchar(max) = '',
         @pickup bit = 0

if @date_test is null  set @date_test = getdate()

 if @ShopNo > 0 and isnull(@id_order,0)=0 
  select  @latitude=0, @longitude = 0 

  --Параметр ограничивающих признаков товаров (Термолабильность)
  --IF OBJECT_ID('tempdb..#tov_limiting_properties') IS NOT NULL     DROP TABLE #tov_limiting_properties
  create table #tov_limiting_properties (id_property int) 
        if isnull(@tov_limiting_properties,'') <> '' --если указан явно
		begin
			INSERT INTO #tov_limiting_properties (id_property)
			SELECT value FROM STRING_SPLIT ( @tov_limiting_properties , ',' ) 
		end
  --Ограничение на партнере "только онлайн оплата"
  declare @only_online bit = 0

  --Если указан заказ/парсел,необходимо опрделить параметры фильтрации из него с учетом, что некоторые параметры вариативные (может быть указано не брать параметр из заказа)
 	if @id_order > 0 --если указан заказ
	begin
		select @shop_str       = iif(@shop_str is null,        cast(ShopNo as varchar), @shop_str),
				@id_partner     = iif(@id_partner is null,     [id_seller], @id_partner),
				@type_payment   = iif(@type_payment is null,   pay_way, @type_payment),
				@id_service_str = iif(@id_service_str is null, cast(id_service as varchar), @id_service_str),
				@time_slot_from = iif(@time_slot_from is null, cast(date_supply as time), @time_slot_from),
				@time_slot_to   = iif(@time_slot_to is null,   cast(date_supply_untill as time), @time_slot_to),
				@date_service   = iif(@date_service is null,   cast(date_supply as date), @date_service),
				@number = number,
				@pickup = pickup
		from Loyalty.dbo.Orders_header (nolock)
		where id_order = @id_order

		if @pickup = 0
			SELECT
				@latitude = ROUND(da.latitude, 4),
				@longitude = ROUND(da.longitude, 4)
			FROM Loyalty.dbo.Takeaway_DeliveryAddress da (NOLOCK)
			WHERE da.id_order = @id_order
		if @pickup = 1 
			select  @latitude=0, @longitude = 0 

		
		if @tov_limiting_properties is null
		begin
			 INSERT INTO #tov_limiting_properties (id_property)
			 select p.[id_property]
			  from [Loyalty].[dbo].[Orders_header_extra] (nolock)
			  inner join vv03.dbo.[tt_gettype_exception_properties] p (nolock)
			  on p.[property_description] = 'Термолабильность'
			  where   id_order = @id_order and [thermolability] = 1
		end
		
		--Поиск ограничения по виду оплат на партнере
		SELECT top(1) @only_online =  [only_online] -- Установлен ли на партнерах флаг "только онлайн оплата" 
		FROM [vv03].[dbo].[Partner_properties] PP (nolock) ---Параметры Поставщиков(партнеров)
			where PP.id_partner = @id_partner

	
	end  --if @id_order > 0
	if NOT(ISNULL(@id_order,0) > 0) and @id_parcel > 0 --не указан заказ, но указан парсел
	begin

		--IF OBJECT_ID('tempdb..#Orders_header_shop_tempTable') IS NOT NULL     DROP TABLE #Orders_header_shop_tempTable
		create table #Orders_header_shop_tempTable (
				[id_order] [int] NOT NULL,
				[ShopNo] [int] NULL,
				[id_seller] [int] NULL,
				pay_way [tinyint] NULL,
				id_service [tinyint] NULL,
				date_supply  [datetime] NULL,
				date_supply_untill  [datetime] NULL,
				number [char](7) NULL,
				pickup [bit] NULL,

				)

		
			INSERT INTO #Orders_header_shop_tempTable([id_order],[ShopNo],[id_seller],pay_way,id_service,date_supply,date_supply_untill,number,pickup)
			SELECT  distinct
					[id_order],
					[ShopNo],
					[id_seller],
					pay_way,
					id_service,
					date_supply,
					date_supply_untill,
					number,
					pickup
			FROM [Loyalty].[dbo].[Orders_header] (nolock)
			where id_parcel = @id_parcel
		
		--select * from #Orders_header_shop_tempTable

		select top(1) --берем параметры из 1 любого заказа, т.к. они одинаковы в парселе
				@shop_str       = iif(@shop_str is null,        cast(ShopNo as varchar), @shop_str),
				--@id_partner     = iif(@id_partner is null,     [id_seller], @id_partner),
				@type_payment   = iif(@type_payment is null,   pay_way, @type_payment),
				@id_service_str = iif(@id_service_str is null, cast(id_service as varchar), @id_service_str),
				@time_slot_from = iif(@time_slot_from is null, cast(date_supply as time), @time_slot_from),
				@time_slot_to   = iif(@time_slot_to is null,   cast(date_supply_untill as time), @time_slot_to),
				@date_service   = iif(@date_service is null,   cast(date_supply as date), @date_service),
				@number = number,
				@pickup = pickup
		from #Orders_header_shop_tempTable

		if @pickup = 0
			SELECT top(1)
				@latitude = ROUND(da.latitude, 4),
				@longitude = ROUND(da.longitude, 4)
			FROM Loyalty.dbo.Takeaway_DeliveryAddress da (NOLOCK)
			inner join #Orders_header_shop_tempTable oh
			on oh.id_order = da.id_order 
		
		if @pickup = 1 
			select  @latitude=0, @longitude = 0 

		
		if @tov_limiting_properties is null
		begin
			 INSERT INTO #tov_limiting_properties (id_property)
			 select distinct p.[id_property]
			  from [Loyalty].[dbo].[Orders_header_extra] ohe (nolock)
			  inner join #Orders_header_shop_tempTable oh
				  on oh.id_order = ohe.id_order and [thermolability] = 1
			  inner join vv03.dbo.[tt_gettype_exception_properties] p (nolock)
			  on p.[property_description] = 'Термолабильность'
			
		end

		--Поиск ограничения по виду оплат на партнере
		SELECT @only_online = iif(isnull(sum(isnull([only_online],0)),0) = 0, 0, 1) -- Установлен ли на партнерах флаг "только онлайн оплата" 
		FROM #Orders_header_shop_tempTable Oh
		inner join [vv03].[dbo].[Partner_properties] PP (nolock) ---Параметры Поставщиков(партнеров)
			on Oh.id_seller = PP.id_partner
	end --if NOT(@id_order > 0) and @id_parcel > 0 --не указан заказ, но указан парсел



 --BEGIN TRY
		
		--IF OBJECT_ID('tempdb..#api_filter_internal') IS NOT NULL     DROP TABLE #api_filter_internal
		CREATE TABLE #api_filter_internal(
   				id_row                      int, 
				id_service                  int,            -- ИД сервиса
				type_service                smallint,       -- Тип сервиса
				id_partner                  int,            -- ИД партнера
				id_online_service      		int,    		-- ИД онлайн сервиса
				id_delivery_service    		int,            -- ИД службы доставки 
				[gettype]                    tinyint,
				[ShopNo]                     [int]            NULL,
				[id_tt]                      [int]            NULL,
				ServiceDistance        		numeric(15, 3),	-- Макс удаленность для службы из настроек 
				delivery_distance_is_route_distance bit,    -- Считать ли удаленность по маршруту
				DirectDistance         		numeric(15, 3),	-- Удаленность по "прямой"
				RouteDistance          		numeric(15, 3),	-- Удаленность "по маршруту"
				TravelMode            		char(10),		-- Тип передвижения
				DurationService       		time(7),		-- Время доставки, ч
				DeliveryHoursFrom			time(7),		-- Доставка С
				DeliveryHoursUntil			time(7),		-- Доставка По
				OrderPackingFrom            time(7),		-- Сборка С
				OrderPackingUntil           time(7),		-- Сборка По
				H_start                     time(7),		-- Время работы магазина С
				H_end                       time(7),		-- Время работы магазина По
				tomorrow_order              bit,            -- Заказ на завтра (настройка магазина и службы)
				H_start_tomorrow            time(7),		-- Время работы магазина завтра С
				H_end_tomorrow              time(7),		-- Время работы магазина завтра По
				same_day_order_from         time(7) ,
				same_day_order_until        time(7),
				urgency_service             bit,
				open_delivery               time(7),
				open_deliveryTM             time(7),
				Priority                    tinyint ,		-- Приоритет служб доставки
    
				[overnight]		             bit			  NULL,
				[close_delivery]             time, 
				[close_order_delivery]       time,
				[open_order_delivery]        time, 
				[open_order_deliveryTM]      time, 
				text_long_header             varchar(1000),
				[text_long_gettype]          varchar(1000),
				text_long_tomorrow_gettype   varchar(1000),
				fl_all_not_work              bit,            -- флаг, показывающий, что все магазины еще не работают
				fl_work_now                  bit,            -- флаг, показывающий, что магазин сейчас работает
				Min_sum_order                decimal(15,2),  -- мин сумма заказа 
				is_high_demand               bit,            -- флаг, есть ли повышенный спрос   
				filter_shop                  bit DEFAULT (1),
				filter_partner               bit DEFAULT (1),
				filter_service               bit DEFAULT (1),
				filter_slot                  bit DEFAULT (1),
				filter_type_payment          bit DEFAULT (1),
				filter_time_count            bit DEFAULT (1),
				filter_tov                   bit DEFAULT (1),
				cache_usage                  bit,
				disable_for_day              bit,
				disable_for_day_tomorrow     bit,
				index ind1 clustered  (id_row)
			  )
	
	-----------------------КЕШ-----------------------------------------------------
	--exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 1 ,@Date_add_log  OUTPUT, @id_log ,@t_period
	--Set @RecalculateMode = 1 
	IF @RecalculateMode = 0 --  (0 - использовать КЭШ (если в КЭШе не окажется актуальных данных, рассчитывать гео2), 1 - рассчитывать  гео2, не используя КЭШ)
	BEGIN
		--Используем КЭШ
		--IF OBJECT_ID('tempdb..#filter_cache') IS NOT NULL     DROP TABLE #filter_cache
		CREATE TABLE #filter_cache(
			[id_service] [int] NULL,
			[type_service] [smallint] NULL,
			[id_partner] [int] NULL,
			[id_online_service] [int] NULL,
			[id_delivery_service] [int] NULL,
			[gettype] [tinyint] NULL,
			[ShopNo] [int] NULL,
			[Id_tt] [int] NULL,
			[ServiceDistance] [decimal](15, 3) NULL,
			[delivery_distance_is_route_distance] [bit] NULL,
			[DirectDistance] [decimal](15, 3) NULL,
			[RouteDistance] [decimal](15, 3) NULL,
			[TravelMode] [char](10) NULL,
			[DurationService] [time](7) NULL,
			[DeliveryHoursFrom] [time](7) NULL,
			[DeliveryHoursUntil] [time](7) NULL,
			[OrderPackingFrom] [time](7) NULL,
			[OrderPackingUntil] [time](7) NULL,
			[H_start] [time](7) NULL,
			[H_end] [time](7) NULL,
			[tomorrow_order] [bit] NULL,
			[H_start_tomorrow] [time](7) NULL,
			[H_end_tomorrow] [time](7) NULL,
			[same_day_order_from] [time](7) NULL,
			[same_day_order_until] [time](7) NULL,
			[urgency_service] [bit] NULL,
			[open_delivery] [time](7) NULL,
			[open_deliveryTM] [time](7) NULL,
			[Priority] [tinyint] NULL,
			[date_add] [datetime] NULL, --
			[id] [int] NULL, --
			[t_period] [tinyint] NULL,
			[Min_sum_order] [decimal](15, 2) NULL, --
			[is_high_demand] [bit] NULL, --
			[disable_for_day] [bit] NULL,
			[disable_for_day_tomorrow] [bit] NULL,
			index ind1 clustered  (date_add, id)
		)
		insert into #filter_cache(  id_service,type_service,id_partner,id_online_service,id_delivery_service,gettype,ShopNo,
									Id_tt,ServiceDistance,delivery_distance_is_route_distance,DirectDistance,RouteDistance,
									TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,
									OrderPackingUntil,H_start,H_end,tomorrow_order,H_start_tomorrow,H_end_tomorrow,
									same_day_order_from,same_day_order_until,urgency_service,
									open_delivery,open_deliveryTM,Priority,date_add, id,t_period,
									Min_sum_order,is_high_demand, disable_for_day,disable_for_day_tomorrow
									)
		select id_service,type_service,id_partner,id_online_service,id_delivery_service,gettype,ShopNo,
				Id_tt,ServiceDistance,delivery_distance_is_route_distance,DirectDistance,RouteDistance,
				TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,
				OrderPackingUntil,H_start,H_end,tomorrow_order,H_start_tomorrow,H_end_tomorrow,
				same_day_order_from,same_day_order_until,urgency_service,
				open_delivery,open_deliveryTM,Priority,date_add, id,t_period,
				Min_sum_order,is_high_demand, disable_for_day,disable_for_day_tomorrow
		from Express.dbo.api_services_filter_20minute_1 f (nolock)
		where f.latitude = @latitude
		and f.longitude = @longitude
		and f.date_add > Dateadd(MINUTE,-16,getdate()) 
		and DATEPART ( minute, @date ) < 40
		
		insert into #filter_cache(  id_service,type_service,id_partner,id_online_service,id_delivery_service,gettype,ShopNo,
									Id_tt,ServiceDistance,delivery_distance_is_route_distance,DirectDistance,RouteDistance,
									TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,
									OrderPackingUntil,H_start,H_end,tomorrow_order,H_start_tomorrow,H_end_tomorrow,
									same_day_order_from,same_day_order_until,urgency_service,
									open_delivery,open_deliveryTM,Priority,date_add, id,t_period,
									Min_sum_order,is_high_demand, disable_for_day,disable_for_day_tomorrow
									)
		select id_service,type_service,id_partner,id_online_service,id_delivery_service,gettype,ShopNo,
				Id_tt,ServiceDistance,delivery_distance_is_route_distance,DirectDistance,RouteDistance,
				TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,
				OrderPackingUntil,H_start,H_end,tomorrow_order,H_start_tomorrow,H_end_tomorrow,
				same_day_order_from,same_day_order_until,urgency_service,
				open_delivery,open_deliveryTM,Priority,date_add, id,t_period,
				Min_sum_order,is_high_demand, disable_for_day,disable_for_day_tomorrow
		from Express.dbo.api_services_filter_20minute_2 f (nolock)
		where f.latitude = @latitude
		and f.longitude = @longitude
		and f.date_add > Dateadd(MINUTE,-16,getdate()) 
		and DATEPART ( minute, @date ) > 19
				   
		insert into #filter_cache(  id_service,type_service,id_partner,id_online_service,id_delivery_service,gettype,ShopNo,
									Id_tt,ServiceDistance,delivery_distance_is_route_distance,DirectDistance,RouteDistance,
									TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,
									OrderPackingUntil,H_start,H_end,tomorrow_order,H_start_tomorrow,H_end_tomorrow,
									same_day_order_from,same_day_order_until,urgency_service,
									open_delivery,open_deliveryTM,Priority,date_add, id,t_period,
									Min_sum_order,is_high_demand, disable_for_day,disable_for_day_tomorrow
									)
		select id_service,type_service,id_partner,id_online_service,id_delivery_service,gettype,ShopNo,
				Id_tt,ServiceDistance,delivery_distance_is_route_distance,DirectDistance,RouteDistance,
				TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,
				OrderPackingUntil,H_start,H_end,tomorrow_order,H_start_tomorrow,H_end_tomorrow,
				same_day_order_from,same_day_order_until,urgency_service,
				open_delivery,open_deliveryTM,Priority,date_add, id,t_period,
				Min_sum_order,is_high_demand, disable_for_day,disable_for_day_tomorrow
		from Express.dbo.api_services_filter_20minute_3 f (nolock)
		where f.latitude = @latitude
		and f.longitude = @longitude
		and f.date_add > Dateadd(MINUTE,-16,getdate()) 
		and NOT (DATEPART ( minute, @date ) > 19 And DATEPART ( minute, @date ) < 40)	
			
			insert into #api_filter_internal(
											id_row,
											id_service,            -- ИД сервиса
											type_service,       -- Тип сервиса
											id_partner,            -- ИД партнера
											id_online_service,    		-- ИД онлайн сервиса
											id_delivery_service,            -- ИД службы доставки 
											[gettype] ,
											[ShopNo],
											[id_tt] ,
											ServiceDistance,	                    -- Макс удаленность для службы из настроек
											delivery_distance_is_route_distance,    -- Считать ли удаленность по маршруту
											DirectDistance         		,	-- Удаленность по "прямой"
											RouteDistance          		,	-- Удаленность "по маршруту"
											TravelMode            		,		-- Тип передвижения
											DurationService       		,		-- Время доставки, ч
											DeliveryHoursFrom			,		-- Доставка С
											DeliveryHoursUntil			,		-- Доставка По
											OrderPackingFrom            ,		-- Сборка С
											OrderPackingUntil           ,		-- Сборка По
											H_start                    ,		-- Время работы магазина С
											H_end                      ,		-- Время работы магазина По
											tomorrow_order              ,            -- Заказ на завтра (настройка магазина и службы)
											H_start_tomorrow            ,		-- Время работы магазина завтра С
											H_end_tomorrow              ,		-- Время работы магазина завтра По
											same_day_order_from          ,
											same_day_order_until        ,
											urgency_service             ,
											open_delivery               ,
											open_deliveryTM             ,
											Priority                    , 		-- Приоритет служб доставки
    										[overnight]		            , 
											[close_delivery]             , -- не пишется в ##
											[close_order_delivery]       , -- не пишется в ##
											[open_order_delivery]        , -- не пишется в ##
											[open_order_deliveryTM]      , -- не пишется в ##
											text_long_header             ,
											[text_long_gettype]          ,
											text_long_tomorrow_gettype   ,
											fl_all_not_work              ,  -- флаг, показывающий, что все магазины еще не работают
											fl_work_now,
											min_sum_order,
										    is_high_demand,
											cache_usage,
											disable_for_day,
											disable_for_day_tomorrow
											)
	
			select  ROW_NUMBER()OVER(order by (select 1)),
					id_service,
					type_service,
					id_partner,
					id_online_service,
					DeliveryServiceID,
					gettype,
					ShopNo,
					id_tt,
					ServiceDistance,       --Дистанция из настроек магазин-служба
					delivery_distance_is_route_distance,
					DirectDistance,   --Дистанция от магазина до клиента по прямой		
					RouteDistance,                          --Дистанция от магазина до клиента по маршруту
					TravelMode,
					[duration_service],
	    			delivery_hours_from,
	    			delivery_hours_until,
	    			order_packing_from,
	    			order_packing_until,
					H_start,
					H_end,
					tomorrow_order,
					H_start_tomorrow,
					H_end_tomorrow,
					same_day_order_from,
					same_day_order_until,
					[urgency_service],
					[open_delivery], -- позднее между временем открытия магазина и началом доставки
					[open_deliveryTM] ,-- позднее между временем открытия магазина и началом доставки завтра
					Priority,
					[overnight],
					ISNULL( CASE
								WHEN ISNULL([H_end], '21:00:00') > delivery_hours_until THEN delivery_hours_until
								ELSE [H_end]
							END
							, '10:00:00'
							) [close_delivery],-- ранее между временем закрытия магазина и окончанием приема доставки
					ISNULL( CASE
								WHEN [same_day_order_until] > ISNULL([H_end], '21:00:00') THEN [H_end]
								ELSE [same_day_order_until]
							END
							, '21:00:00') [close_order_delivery], -- ранее между временем закрытия магазина и окончанием приема заказов
					ISNULL( CASE
								WHEN ISNULL(H_start, '10:00:00') < [same_day_order_from] THEN [same_day_order_from]
								ELSE H_start
							END
							, '10:00:00') [open_order_delivery], -- позднее между временем открытия магазина и началом приема доставки
					ISNULL( CASE
								WHEN ISNULL(H_start, '10:00:00') < [same_day_order_from] THEN [same_day_order_from]
								ELSE H_start
							END
							, '10:00:00') [open_order_deliveryTM], -- позднее между временем открытия магазина и началом приема доставки завтра
					text_long_header, 
					[text_long_gettype],        
					text_long_tomorrow_gettype,
					IIF(sum(case when DATEDIFF(minute,H_start, H_end)=0 then 1
								when  CONVERT(time, @date_test) <  ISNULL(CASE
																			WHEN ISNULL(H_start, '10:00:00') < delivery_hours_from THEN delivery_hours_from
																			ELSE H_start
																			END, '10:00:00')
								then 1 
								when  CONVERT(time, @date_test) >  ISNULL(CASE
																			WHEN ISNULL(H_end, '21:00:00') > delivery_hours_until THEN delivery_hours_until
																			ELSE H_end
																			END, '21:00:00')
								then 1
								else 0 end
							) over (partition by  case when gettype = 0 then 1 else 2 end)
						=count(1)over (partition by  case when gettype = 0 then 1 else 2 end)
					,1,0) fl_all_not_work,
				  case when CONVERT(time, @date_test) BETWEEN ISNULL(CASE
																		WHEN ISNULL(H_start, '10:00:00') < delivery_hours_from THEN delivery_hours_from
																		ELSE H_start
																		END, '10:00:00')
															AND ISNULL(CASE
																		WHEN ISNULL(H_end, '21:00:00') > delivery_hours_until THEN delivery_hours_until
																		ELSE H_end
																		END, '10:00:00') 
						then 1 else 0 end fl_work_now,
			       min_sum_order,
				   is_high_demand,
				   1 cache_usage,
				   disable_for_day,
				   disable_for_day_tomorrow
			from(
	select  A.id_service,
			A.type_service,	
			A.id_partner,	
			A.id_online_service,	
			A.id_delivery_service DeliveryServiceID,	
			A.gettype,	
			A.ShopNo,	
			A.Id_tt,	
			A.ServiceDistance,	
			A.delivery_distance_is_route_distance,	
			A.DirectDistance,	
			A.RouteDistance,	
			A.TravelMode,	
			A.DurationService duration_service,	
			A.DeliveryHoursFrom delivery_hours_from,	
			A.DeliveryHoursUntil delivery_hours_until,	
			A.OrderPackingFrom order_packing_from,	
			A.OrderPackingUntil order_packing_until,	
			A.H_start,	
			A.H_end,	
			A.tomorrow_order,	
			A.H_start_tomorrow,	
			A.H_end_tomorrow,	
			A.same_day_order_from,
			A.same_day_order_until,	
			A.urgency_service,	
			A.open_delivery,	
			A.open_deliveryTM,	
			A.Priority,
			A.Min_sum_order,
			A.is_high_demand,
			CASE 
				when [same_day_order_from] > [same_day_order_until] then 1
				else 0
			end [overnight], -- кейс когда магазин закрывается на следующий день 				
			ISNULL(os.[text_long_header_online_service], 'О Доставке') text_long_header,
			os.[text_long_online_service] [text_long_gettype],
			os.[text_long_tomorrow_online_service] text_long_tomorrow_gettype,
			ISNULL(disable_for_day,0) disable_for_day,
			ISNULL(disable_for_day_tomorrow,0) disable_for_day_tomorrow

   from (select f.*,dense_rank()over(partition by 1 order by date_add desc, id desc) nom
		 from #filter_cache f
		 )A		
   inner join [vv03].[dbo].tt_online_services1 os (nolock)
			on os.id_online_service = A.id_online_service
			and A.nom=1
   LEFT JOIN vv03.dbo.tt_shedule sh (nolock) 
				ON sh.id_tt = A.id_tt
				AND sh.dw = DATEPART(WEEKDAY, @date_test)
			LEFT JOIN vv03.dbo.tt_shedule sh_tomorrow (nolock) 
				ON sh_tomorrow.id_tt = A.id_tt
				AND sh_tomorrow.dw = DATEPART(WEEKDAY, DATEADD(DAY, 1, @date_test))
			LEFT JOIN vv03.dbo.tt_shedule_change (nolock) shCh
				on shCh.ShopNo = A.ShopNo
				and shCh.date = CAST(@date_test as date)
			LEFT JOIN vv03.dbo.tt_shedule_change (nolock) shCh_tomorrow
				on shCh_tomorrow.ShopNo = A.ShopNo
				and shCh_tomorrow.date = DATEADD(DAY,1,CAST(@date_test as date))
			
	WHERE (NOT(DATEDIFF(minute,shCh.H_start, shCh.H_end)=0 and DATEDIFF(minute,shCh_tomorrow.H_start, shCh_tomorrow.H_end)=0) or (shCh.H_start is null and shCh.H_end is null and shCh_tomorrow.H_start is null and shCh_tomorrow.H_end is null))
    and A.nom = 1
   )as A2
   --select 'aaa',* from #api_services_filter
	--	--Если данных в КЭШе нет, то меняем параметр @RecalculateMode, будем рассчитывать гео2
	 

		IF @@Rowcount = 0 
		begin
			If @Use_only_casch = 0 Set @RecalculateMode = 1 
		end
		else Set @cache_usage = 1

	
 
	END
	-----------------Конец Кеш-----------------------------------------------------
	exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 2 ,@Date_add_log  OUTPUT, @id_log ,@t_period

	
	IF @RecalculateMode = 1 -- (0 - использовать КЭШ (если в КЭШе не окажется актуальных данных, рассчитывать гео2), 1 - рассчитывать  гео2, не используя КЭШ)
	BEGIN

	
	exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 3 ,@Date_add_log  OUTPUT, @id_log ,@t_period
---------------------------------------------------------------------------------------------------------------------------
	-- Загрузка маршрутов 
	---------------------------------------------------------------------------------------------------------------------------
	-- данные по всем маршрутам рассчитаны процедурами takeaway_getshops_Travel_Modes_v2 и Takeaway_save_Distance_Requests
	-- и лежат в глобальных временных таблицах  express..Distance_Requests_ (1 или 2 в зависимости от минуты) и  express..Distance_Requests_upd_ (1 или 2)
     DECLARE @t_t char(1),@t_t2 char(1)

	--IF OBJECT_ID('tempdb..#Distance_Requests') IS NOT NULL 	DROP TABLE #Distance_Requests
	CREATE TABLE #Distance_Requests([latitude]    decimal(15, 12),
									[longitude]   decimal(15, 12),
									[type_search] [char](6) NULL,
									[id_tt]       int,
									[TravelModes] char(10),
									[Status]      [char](2) NULL,
									[distance]    numeric(15,3)  NULL,
									[duration]    [time](7) NULL,
									[gettype]     tinyint	NULL,
									[is_zone]     tinyint	NULL,
									[id_online_service] tinyint NULL,
									[DirectDistance] numeric(15,3) NULL
									)
	--IF OBJECT_ID('tempdb..#Distance_Requests_temp') IS NOT NULL 	DROP TABLE #Distance_Requests_temp
	create table #Distance_Requests_temp([latitude] decimal(15,12),
										 [longitude] decimal(15,12),
										 [id_tt] int,
										 [TravelModes] char(10),
										 gettype tinyint,
										 is_exists bit,
										 is_zone bit NULL,
										 [id_online_service] tinyint NULL
										)
	--IF OBJECT_ID('tempdb..#Distance_Requests_upd_temp') IS NOT NULL 	DROP TABLE #Distance_Requests_upd_temp
	create table #Distance_Requests_upd_temp([latitude] decimal(15,12),
											 [longitude] decimal(15,12),
											 [id_tt] int,
											 [TravelModes] char(10),
											 [type_search] [char](6) NULL,
											 [Status] [char](2) NULL,
											 [distance] [real] NULL,
											 [duration] [time](7) NULL,
											 [DirectDistance] decimal(15,3) NULL
											)


 
	


	exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 31 ,@Date_add_log  OUTPUT, @id_log ,@t_period

	IF @latitude > 0  AND @longitude > 0
	BEGIN
	BEGIN TRY

		    set @t_t =case  when convert(int, datepart(minute,getdate()) ) % 3 = 0 then '2' 
							when convert(int, datepart(minute,getdate()) ) % 3 = 1 then '0' 
							else '1' end
--print '@t_t = '+ cast(@t_t as varchar)
			set @t_t2 =case  when convert(int, datepart(minute,getdate()) ) % 3 = 0 then '0' 
							 when convert(int, datepart(minute,getdate()) ) % 3 = 1 then '1' 
							 else '2' end
--print '@t_t2 = '+ cast(@t_t2 as varchar)

	truncate table #Distance_Requests_temp
	truncate table #Distance_Requests_upd_temp
	if @t_t = 0 or @t_t2 = 0
	begin
		insert into  #Distance_Requests_temp ([latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service])
		select [latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service]
		from  express.dbo.Distance_Requests_temp_0  t (nolock)
		where t.latitude = @latitude  and  t.longitude = @longitude

		insert into  #Distance_Requests_upd_temp ([latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance])
		select [latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance]
		from express.dbo.Distance_Requests_upd_temp_0 t (nolock)
		where t.latitude =  @latitude  and  t.longitude = @longitude
	end
	if @t_t = 1 or @t_t2 = 1
	begin
		insert into  #Distance_Requests_temp ([latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service])
		select [latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service]
		from  express.dbo.Distance_Requests_temp_1  t (nolock)
		where t.latitude = @latitude  and  t.longitude = @longitude

		insert into  #Distance_Requests_upd_temp ([latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance])
		select [latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance]
		from express.dbo.Distance_Requests_upd_temp_1 t (nolock)
		where t.latitude =  @latitude  and  t.longitude = @longitude
	end
	if @t_t = 2 or @t_t2 = 2
	begin
		insert into  #Distance_Requests_temp ([latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service])
		select [latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service]
		from  express.dbo.Distance_Requests_temp_2  t (nolock)
		where t.latitude = @latitude  and  t.longitude = @longitude

		insert into  #Distance_Requests_upd_temp ([latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance])
		select [latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance]
		from express.dbo.Distance_Requests_upd_temp_2 t (nolock)
		where t.latitude =  @latitude  and  t.longitude = @longitude
	end
	  insert into #Distance_Requests
	  select distinct
		   a.[latitude]
		  ,a.[longitude]
		  ,b.[type_search]
		  ,a.[id_tt]
		  ,a.[TravelModes]
		  ,b.[Status]
		  ,b.[distance]
		  ,b.[duration]
		  ,a.[gettype]
		  ,a.[is_zone]
		  ,a.id_online_service
		  ,b.DirectDistance
	from #Distance_Requests_temp a
	left join #Distance_Requests_upd_temp b on 
		   a.[id_tt] = b.id_tt and
		   a.[TravelModes] = b.[TravelModes]

			
			

	END TRY
	BEGIN CATCH
	--IF (XACT_STATE()) = -1
	--			ROLLBACK TRANSACTION;
	     exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 34 ,@Date_add_log  OUTPUT, @id_log ,@t_period

		set @error_message = rtrim(ERROR_MESSAGE())    
		EXEC Com.dbo.Jobs_Error_Ins 0, @proc_name, 1000, @error_message  
		--insert into [Com].[dbo].[test_error] (a,b)
		--select 'Забор маршрутов в api_services_filtering' ,  ERROR_MESSAGE()
	END CATCH

	exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 10 ,@Date_add_log  OUTPUT, @id_log ,@t_period 

    ----------------------
    -- если пустая, то запустить расчет маршрутов принудительно 

    
	  IF NOT EXISTS (SELECT TOP 1
        1
      FROM #Distance_Requests)
	  begin

	--  Set @ms2 = @ms2 + datediff(ms,@d,Getdate())	
	--print convert(nvarchar,@ms2) + ' мс   Do Takeaway Шаг = '	+ convert(nvarchar,datediff(ms,@d,Getdate()))+ ' мс'
	--Set @d = Getdate()
	
      EXEC loyalty..Takeaway_getshops_Travel_Modes_v2
	                                               @latitude,
                                                   @longitude,
                                                   @number = @number,
                                                   @only_exec = 1,
                                                   @shopNo = @shopNo,
                                                   --@OnlyThisShop = @OnlyThisShop,
												   @date_test = @date_test
 --   Set @ms2 = @ms2 + datediff(ms,@d,Getdate())	
	--print convert(nvarchar,@ms2) + ' мс   Posle Takeaway Шаг = '	+ convert(nvarchar,datediff(ms,@d,Getdate()))+ ' мс'
	--Set @d = Getdate()
     exec jobs.dbo.insert_jobs_log_ins @id_job_log , @b_id_log , 15 ,@Date_add_log  OUTPUT, @id_log ,@t_period 

    BEGIN TRY

	truncate table #Distance_Requests_temp
	truncate table #Distance_Requests_upd_temp
	if @t_t = 0 or @t_t2 = 0
	begin
		insert into  #Distance_Requests_temp ([latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service])
		select [latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service]
		from  express.dbo.Distance_Requests_temp_0  t (nolock)
		where t.latitude = @latitude  and  t.longitude = @longitude

		insert into  #Distance_Requests_upd_temp ([latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance])
		select [latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance]
		from express.dbo.Distance_Requests_upd_temp_0 t (nolock)
		where t.latitude =  @latitude  and  t.longitude = @longitude
	end
	if @t_t = 1 or @t_t2 = 1
	begin
		insert into  #Distance_Requests_temp ([latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service])
		select [latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service]
		from  express.dbo.Distance_Requests_temp_1  t (nolock)
		where t.latitude = @latitude  and  t.longitude = @longitude

		insert into  #Distance_Requests_upd_temp ([latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance])
		select [latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance]
		from express.dbo.Distance_Requests_upd_temp_1 t (nolock)
		where t.latitude =  @latitude  and  t.longitude = @longitude
	end
	if @t_t = 2 or @t_t2 = 2
	begin
		insert into  #Distance_Requests_temp ([latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service])
		select [latitude],[longitude],[id_tt],[TravelModes],gettype,is_exists,is_zone,[id_online_service]
		from  express.dbo.Distance_Requests_temp_2  t (nolock)
		where t.latitude = @latitude  and  t.longitude = @longitude

		insert into  #Distance_Requests_upd_temp ([latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance])
		select [latitude],[longitude],[id_tt],[TravelModes],[type_search],[Status],[distance],[duration],[DirectDistance]
		from express.dbo.Distance_Requests_upd_temp_2 t (nolock)
		where t.latitude =  @latitude  and  t.longitude = @longitude
	end
	  insert into #Distance_Requests
	  select distinct
		   a.[latitude]
		  ,a.[longitude]
		  ,b.[type_search]
		  ,a.[id_tt]
		  ,a.[TravelModes]
		  ,b.[Status]
		  ,b.[distance]
		  ,b.[duration]
		  ,a.[gettype]
		  ,a.[is_zone]
		  ,a.id_online_service
		  ,b.DirectDistance
	from #Distance_Requests_temp a
	left join #Distance_Requests_upd_temp b on 
		   a.[id_tt] = b.id_tt and
		   a.[TravelModes] = b.[TravelModes]


	exec jobs.dbo.insert_jobs_log_ins @id_job_log , @b_id_log , 16 ,@Date_add_log  OUTPUT, @id_log ,@t_period 

    END TRY
    BEGIN CATCH
	
		INSERT INTO #Distance_Requests
        SELECT
          t.[latitude],
          t.[longitude],
          t.[type_search],
          t.[id_tt],
          t.[TravelModes],
          t.[Status],
          t.[distance],
          t.[duration],
          t.[gettype],
          NULL
		  ,ds_os.id_online_service
		  , c.Distance
        FROM [Loyalty].[dbo].[Distance_Requests] t (nolock)
		left join vv03.dbo.tt tt (nolock)
		on tt.id_TT = t.id_tt
		cross apply COM.dbo.CoordinatesToDistance_Inline(tt.Shirota, tt.Dolgota, @latitude, @longitude) c --Длина пути от магазина до клиента
		left join vv03.dbo.tt_delivery_services_online_services ds_os (nolock)
		on (ds_os.id_tt = t.id_tt or ds_os.id_tt is null)	and ds_os.gettype = t.gettype
        WHERE t.latitude = @latitude
        AND t.longitude = @longitude
		and t.[distance] is not null

		exec jobs.dbo.insert_jobs_log_ins @id_job_log , @b_id_log , 17 ,@Date_add_log  OUTPUT, @id_log ,@t_period 

  		set @error_message = rtrim(ERROR_MESSAGE())    
		EXEC Com.dbo.Jobs_Error_Ins 0, @proc_name, 1, @error_message    
	
    END CATCH

	END
	



	END
	ELSE -- if @latitude >0 and  @longitude >0 
	begin

		INSERT 
		INTO #Distance_Requests([latitude],
								[longitude],
								[type_search],
								[id_tt],
								[TravelModes],
								[Status],
								[distance],
								[duration],
								[gettype],
								id_online_service)
		SELECT  0,
				0,
				NULL,
				tdz.id_tt,
				NULL,
				NULL,
				NULL,
				NULL,
				tdz.gettype,
				ds_os.id_online_service
		FROM vv03.dbo.tt_delivery tdz (nolock)
		INNER JOIN vv03.dbo.tt_delivery_service tts (nolock)
			ON tdz.gettype = tts.gettype
			AND [is_active_service] = 1
		left join vv03.dbo.tt_delivery_services_online_services ds_os (nolock)
		on (ds_os.id_tt = tdz.id_tt or ds_os.id_tt is null)	and ds_os.gettype = tdz.gettype
		WHERE tts.TravelModes IS NULL
		AND tdz.ShopNo = @ShopNo

		exec jobs.dbo.insert_jobs_log_ins @id_job_log , @b_id_log , 18 ,@Date_add_log  OUTPUT, @id_log ,@t_period 
 	end
  
	---------------------------------------------------------------------------------------------------------------------------
	-- Конец Загрузки маршрутов 
	---------------------------------------------------------------------------------------------------------------------------
	--Set @ms2 = @ms2 + datediff(ms,@d,Getdate())	
	--print convert(nvarchar,@ms2) + ' мс   Marshruti Шаг = '	+ convert(nvarchar,datediff(ms,@d,Getdate()))+ ' мс'
	--Set @d = Getdate()
	--*/
	--select * from #Distance_Requests DR
	
	
		-- Отбор по удаленности по маршруту (ограничение в настройках приемки заказов магазинами)
		DELETE t
		--select t.*, td.delivery_distance, dr.distance 
		FROM #Distance_Requests t
		INNER JOIN vv03.dbo.tt_delivery td (NOLOCK)
			ON t.id_tt = td.id_tt
			AND t.gettype = td.gettype
			AND t.TravelModes = td.TravelMode
			AND td.TravelMode IS NOT NULL
			AND ISNULL(td.delivery_distance_is_route_distance,0) = 1
		WHERE t.TravelModes IS NOT NULL
		AND t.distance IS NOT NULL
		AND ISNULL(td.delivery_distance, 0) < ISNULL(t.distance, 0) 
		and ISNULL(td.delivery_distance, 0) <> 0


	-----------------------------    Формулы онлайн-сервиса   -------------------------------------------------------------
		--Отбор по формулам онлайн-сервиса (в настройках онлайн-сервиса, вкладка Формулы)
		--IF OBJECT_ID('tempdb..#tt_online_services_Formulas') IS NOT NULL     DROP TABLE #tt_online_services_Formulas
		CREATE TABLE #tt_online_services_Formulas(id_online_service tinyint,formula_unselection varchar(max),formula_price varchar(max),formula_min_sum varchar(max),formula_price_num numeric(18,2),formula_min_sum_num numeric(18,2), other_parameters varchar(max)) 
		--Берем формулы для онлайн-сервисов из таблицы
		INSERT INTO #tt_online_services_Formulas (id_online_service,formula_unselection,formula_price,formula_min_sum,other_parameters)
		select distinct f.id_online_service,f.formula_unselection, f.formula_price,f.formula_min_sum,other_parameters
		from [vv03].[dbo].[tt_online_services_Formulas1] f (nolock)
		inner join #Distance_Requests t
		on t.id_online_service = f.id_online_service
		
			 
		--Курсор с формулами ограничения по онлайн-сервисам
		DECLARE Cur CURSOR LOCAL FOR
			select  f.id_online_service,f.formula_unselection,f.formula_price,f.formula_min_sum, f.other_parameters
			from #tt_online_services_Formulas f

		DECLARE @id_online_service tinyint, @formula_unselection varchar(4000),@formula_price varchar(1000), @formula_min_sum varchar(1000),  @other_parameters varchar(4000)

		OPEN Cur 
		FETCH NEXT FROM Cur into @id_online_service, @formula_unselection, @formula_price, @formula_min_sum, @other_parameters
	
		WHILE @@FETCH_STATUS = 0 BEGIN
			--kirn 
			if ISNULL(@other_parameters,'') <> ''
			begin
				DECLARE cur_other_parameter CURSOR LOCAL FOR
				select replace(value,' ','') from STRING_SPLIT ( @other_parameters, ';') --парсинг всех параметров
				DECLARE @cur_parameter varchar(1000)
				OPEN cur_other_parameter
				FETCH NEXT FROM cur_other_parameter into @cur_parameter
				WHILE @@FETCH_STATUS = 0 BEGIN
					if ISNULL(@cur_parameter,'') <> ''
						--если это B2B
						if CHARINDEX('@b2b', @cur_parameter)>=1
						begin try
							--Удаляем строки онлайн-сервиса, если они не проходят проверку
							
							Set @sql = 'delete t
							from #Distance_Requests t
							where t.id_online_service = ' + cast(@id_online_service as varchar)+ '
							and NOT dbo.IsB2B('''+ cast(@number as varchar)+''')' + replace(@cur_parameter, '@b2b',' ')
							--print @sql

							exec (@sql)
							
						end try
						begin catch
							set @error_message = 'ГЕО. Ошибка применения формулы ограничения онлайн-сервиса ' + rtrim(ERROR_MESSAGE())    
							EXEC Com.dbo.Jobs_Error_Ins @id_job_log, @proc_name, 1, @error_message 
							exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 999 ,@Date_add_log  OUTPUT, @id_log ,@t_period
						end catch
						--if B2B
					
				FETCH NEXT FROM cur_other_parameter into @cur_parameter
				END

				CLOSE cur_other_parameter
				DEALLOCATE cur_other_parameter

			end

			if ISNULL(@formula_unselection,'') <> ''
			--Отбор по формуле ограничения онлайн-сервиса (ограничение в настройках онлайн-сервиса, поле Формула ограничения)
			begin try
				--Удаляем строки онлайн-сервиса, если они не проходят проверку по формуле ограничений
				Set @sql = 'delete t
				from #Distance_Requests t
				where t.id_online_service = ' + cast(@id_online_service as varchar)+ '
				and ' + @formula_unselection

				--print @sql			
				exec (@sql)
			end try
			begin catch
				set @error_message = 'ГЕО. Ошибка применения формулы ограничения онлайн-сервиса ' + rtrim(ERROR_MESSAGE())    
				EXEC Com.dbo.Jobs_Error_Ins @id_job_log, @proc_name, 1, @error_message 
				exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 999 ,@Date_add_log  OUTPUT, @id_log ,@t_period
			end catch
			
			--Перенесено в баттонс
					----Рассчитываем стоимость услуги по формуле (ограничение в настройках онлайн-сервиса, поле Формула стоимости услуги)
					----Потом возможно добавление переменных в формулу
					--If ISNULL(@formula_price,'') <> ''
					--begin try
					--	Set @sql = 'update #tt_online_services_Formulas 
					--				set formula_price_num = cast('+@formula_price +' as numeric(18,2))
					--				where id_online_service = ' + cast(@id_online_service as varchar)

					--	--print @sql
					--	exec (@sql)
			
					--end try
					--begin catch
					--	set @error_message = 'ГЕО. Ошибка применения формулы стоимости услуги онлайн-сервиса ' + rtrim(ERROR_MESSAGE())    
					--	EXEC Com.dbo.Jobs_Error_Ins @id_job_log, @proc_name, 1, @error_message 
					--	exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 999 ,@Date_add_log  OUTPUT, @id_log ,@t_period
					--end catch

			--Рассчитываем мин.стоимость корзины по формуле (ограничение в настройках онлайн-сервиса, поле Формула стоимости корзины)
			--Потом возможно добавление переменных в формулу
			If ISNULL(@formula_min_sum,'') <> ''
			begin try
				Set @sql = 'update #tt_online_services_Formulas 
							set formula_min_sum_num = cast('+@formula_min_sum +' as numeric(18,2))
							where id_online_service = ' + cast(@id_online_service as varchar)

				--print @sql
				exec (@sql)
			
			end try
			begin catch
				set @error_message = 'ГЕО. Ошибка применения формулы стоимости корзины онлайн-сервиса ' + rtrim(ERROR_MESSAGE())    
				EXEC Com.dbo.Jobs_Error_Ins @id_job_log, @proc_name, 1, @error_message 
				exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 999 ,@Date_add_log  OUTPUT, @id_log ,@t_period
			end catch


			--Берем следующий онлайн-сервис
			FETCH NEXT FROM Cur into @id_online_service, @formula_unselection, @formula_price, @formula_min_sum,  @other_parameters		
		END

		CLOSE Cur
		DEALLOCATE Cur

		--select  * from #tt_online_services_Formulas	

	-----------------------------end Формулы онлайн-сервиса----------------------------------------------------------------	


	exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 4 ,@Date_add_log  OUTPUT, @id_log ,@t_period
				
				--Отключение магазинов
				--IF OBJECT_ID('tempdb..#tt_disable_for_day') IS NOT NULL     DROP TABLE #tt_disable_for_day
				CREATE TABLE #tt_disable_for_day(Type_service tinyint,id_tt int,disable_for_day bit,disable_for_day_tomorrow bit)
				INSERT into #tt_disable_for_day
				select Type_service, id_tt ,
					   sum(case when dis.date_disable  = CAST(@date_test   AS date) then 1 else 0 end) disable_for_day,
					   sum(case when dis.date_disable  = CAST(@date_test+1 AS date) then 1 else 0 end) disable_for_day_tomorrow
				from [vv03].[dbo].[tt_disable_for_day] dis (nolock)
				where (dis.date_disable between CAST(@date_test AS date) and  CAST(@date_test+1 AS date))
				group by Type_service, id_tt 
				



	insert into #api_filter_internal(       id_row,
											id_service,            -- ИД сервиса
											type_service,       -- Тип сервиса
											id_partner,            -- ИД партнера
											id_online_service,    		-- ИД онлайн сервиса
											id_delivery_service,            -- ИД службы доставки 
											[gettype] ,
											[ShopNo],
											[id_tt] ,
											ServiceDistance,	                    -- Макс удаленность для службы из настроек
											delivery_distance_is_route_distance,    -- Считать ли удаленность по маршруту
											DirectDistance         		,	-- Удаленность по "прямой"
											RouteDistance          		,	-- Удаленность "по маршруту"
											TravelMode            		,		-- Тип передвижения
											DurationService       		,		-- Время доставки, ч
											DeliveryHoursFrom			,		-- Доставка С
											DeliveryHoursUntil			,		-- Доставка По
											OrderPackingFrom            ,		-- Сборка С
											OrderPackingUntil           ,		-- Сборка По
											H_start                    ,		-- Время работы магазина С
											H_end                      ,		-- Время работы магазина По
											tomorrow_order              ,            -- Заказ на завтра (настройка магазина и службы)
											H_start_tomorrow            ,		-- Время работы магазина завтра С
											H_end_tomorrow              ,		-- Время работы магазина завтра По
											same_day_order_from          ,
											same_day_order_until        ,
											urgency_service             ,
											open_delivery               ,
											open_deliveryTM             ,
											Priority                    , 		-- Приоритет служб доставки
    										[overnight]		            , 
											[close_delivery]             , -- не пишется в ##
											[close_order_delivery]       , -- не пишется в ##
											[open_order_delivery]        , -- не пишется в ##
											[open_order_deliveryTM]      , -- не пишется в ##
											text_long_header             ,
											[text_long_gettype]          ,
											text_long_tomorrow_gettype   ,
											fl_all_not_work              ,  -- флаг, показывающий, что все магазины еще не работают
											fl_work_now,
											min_sum_order,
										    is_high_demand,
											cache_usage,
											disable_for_day,
											disable_for_day_tomorrow
											)
	
			select  ROW_NUMBER()OVER(order by (select 1)),
					id_service,
					type_service,
					id_partner,
					id_online_service,
					DeliveryServiceID,
					gettype,
					ShopNo,
					id_tt,
					ServiceDistance,       --Дистанция из настроек магазин-служба
					delivery_distance_is_route_distance,
					DirectDistance,   --Дистанция от магазина до клиента по прямой		
					RouteDistance,                          --Дистанция от магазина до клиента по маршруту
					TravelMode,
					[duration_service],
	    			delivery_hours_from,
	    			delivery_hours_until,
	    			order_packing_from,
	    			order_packing_until,
					H_start,
					H_end,
					tomorrow_order,
					H_start_tomorrow,
					H_end_tomorrow,
					same_day_order_from,
					same_day_order_until,
					[urgency_service],
					[open_delivery], -- позднее между временем открытия магазина и началом доставки
					[open_deliveryTM] ,-- позднее между временем открытия магазина и началом доставки завтра
					Priority,
					[overnight],
					ISNULL( CASE
								WHEN ISNULL([H_end], '21:00:00') > delivery_hours_until THEN delivery_hours_until
								ELSE [H_end]
							END
							, '10:00:00'
							) [close_delivery],-- ранее между временем закрытия магазина и окончанием приема доставки
					ISNULL( CASE
								WHEN [same_day_order_until] > ISNULL([H_end], '21:00:00') THEN [H_end]
								ELSE [same_day_order_until]
							END
							, '21:00:00') [close_order_delivery], -- ранее между временем закрытия магазина и окончанием приема заказов
					ISNULL( CASE
								WHEN ISNULL(H_start, '10:00:00') < [same_day_order_from] THEN [same_day_order_from]
								ELSE H_start
							END
							, '10:00:00') [open_order_delivery], -- позднее между временем открытия магазина и началом приема доставки
					ISNULL( CASE
								WHEN ISNULL(H_start, '10:00:00') < [same_day_order_from] THEN [same_day_order_from]
								ELSE H_start
							END
							, '10:00:00') [open_order_deliveryTM], -- позднее между временем открытия магазина и началом приема доставки завтра
					text_long_header, 
					[text_long_gettype],        
					text_long_tomorrow_gettype,
					IIF(sum(case when DATEDIFF(minute,H_start, H_end)=0 then 1
								when  CONVERT(time, @date_test) <  ISNULL(CASE
																			WHEN ISNULL(H_start, '10:00:00') < delivery_hours_from THEN delivery_hours_from
																			ELSE H_start
																			END, '10:00:00')
								then 1 
								when  CONVERT(time, @date_test) >  ISNULL(CASE
																			WHEN ISNULL(H_end, '21:00:00') > delivery_hours_until THEN delivery_hours_until
																			ELSE H_end
																			END, '21:00:00')
								then 1
								else 0 end
							) over (partition by  case when gettype = 0 then 1 else 2 end)
						=count(1)over (partition by  case when gettype = 0 then 1 else 2 end)
					,1,0) fl_all_not_work,
				  case when CONVERT(time, @date_test) BETWEEN ISNULL(CASE
																		WHEN ISNULL(H_start, '10:00:00') < delivery_hours_from THEN delivery_hours_from
																		ELSE H_start
																		END, '10:00:00')
															AND ISNULL(CASE
																		WHEN ISNULL(H_end, '21:00:00') > delivery_hours_until THEN delivery_hours_until
																		ELSE H_end
																		END, '10:00:00') 
						then 1 else 0 end fl_work_now,
			       min_sum_order,
				   is_high_demand,
				   NULL cache_usage,
					ISNULL(disable_for_day,0) disable_for_day,
					ISNULL(disable_for_day_tomorrow,0) disable_for_day_tomorrow
			from(
			select  os.id_service,
					os.type_service,
					os.id_partner,
					os.id_online_service,
					ds.DeliveryServiceID,
					ds.gettype,
					d.ShopNo,
					DR.id_tt,
					d.delivery_distance ServiceDistance,       --Дистанция из настроек магазин-служба
					d.delivery_distance_is_route_distance,
					round(DR.DirectDistance / 1000,3) DirectDistance,   --Дистанция от магазина до клиента по прямой		
					DR.distance RouteDistance,                          --Дистанция от магазина до клиента по маршруту
					d.TravelMode,
					d.delivery_time [duration_service],
	    			d.delivery_hours_from,
	    			d.delivery_hours_until,
	    			d.order_packing_from,
	    			d.order_packing_until,
					ISNULL(ISNULL(shCh.H_start,sh.H_start), '10:00:00') H_start,
					ISNULL(ISNULL(shCh.H_end,sh.H_end), '21:00:00') H_end,
					d.tomorrow_order,
					ISNULL(ISNULL(shCh_tomorrow.H_start,sh_tomorrow.H_start), '10:00:00') H_start_tomorrow,
					ISNULL(ISNULL(shCh_tomorrow.H_end, sh_tomorrow.H_end), '21:00:00') H_end_tomorrow,
					d.same_day_order_from,
					d.same_day_order_until,
					CASE WHEN DATEDIFF(HOUR, [same_day_order_from], [delivery_hours_from]) <= 2 
						 THEN 1
						 ELSE 0
					END [urgency_service],
					ISNULL(CASE
							WHEN ISNULL(ISNULL(shCh.H_start,sh.H_start), '10:00:00') < [delivery_hours_from] THEN [delivery_hours_from]
							ELSE ISNULL(shCh.H_start,sh.H_start)
						   END, '10:00:00') [open_delivery] -- позднее между временем открытия магазина и началом доставки
						  ,
					ISNULL(CASE
							WHEN ISNULL(ISNULL(shCh_tomorrow.H_start,sh_tomorrow.H_start), '10:00:00') < [delivery_hours_from] THEN [delivery_hours_from]
							ELSE ISNULL(shCh_tomorrow.H_start,sh_tomorrow.H_start)
						   END, '10:00:00') [open_deliveryTM] ,-- позднее между временем открытия магазина и началом доставки завтра
					ds.prioritet Priority,
					CASE 
						when [same_day_order_from] > [same_day_order_until] then 1
						else 0
					end [overnight], -- кейс когда магазин закрывается на следующий день 				
					ISNULL(os.[text_long_header_online_service], 'О Доставке') text_long_header,
					os.[text_long_online_service] [text_long_gettype],
				    os.[text_long_tomorrow_online_service] text_long_tomorrow_gettype,
				    --ISNULL(tts.text_long_header, 'О Доставке') text_long_header, 
					--tts.[text_long_gettype] [text_long_gettype],        
					--tts.text_long_tomorrow_gettype text_long_tomorrow_gettype,
					ISNULL(f.min_sum_order, osF.formula_min_sum_num) min_sum_order,
					case when ISNULL(f.min_sum_order,0) >0 then 1 else 0 end is_high_demand,
					Dis.disable_for_day,
					Dis.disable_for_day_tomorrow
			from 
			#Distance_Requests DR
			inner join vv03.dbo.tt_delivery_service ds (nolock)
			on ds.gettype = DR.gettype
			inner join [vv03].[dbo].[tt_delivery] d (nolock)
				on d.id_tt = DR.id_tt
				and d.id_delivery_service = ds.DeliveryServiceID
				and ISNULL(ISNULL(RTrim(d.TravelMode),ds.[TravelModes]),'walking') = ISNULL(RTrim( DR.TravelModes),'walking')	
			inner join [vv03].[dbo].tt_online_services os (nolock)
			on os.id_online_service = DR.id_online_service
			LEFT JOIN vv03.dbo.tt_shedule sh (nolock) 
				ON sh.id_tt = DR.id_tt
				AND sh.dw = DATEPART(WEEKDAY, @date_test)
			LEFT JOIN vv03.dbo.tt_shedule sh_tomorrow (nolock) 
				ON sh_tomorrow.id_tt = DR.id_tt
				AND sh_tomorrow.dw = DATEPART(WEEKDAY, DATEADD(DAY, 1, @date_test))
			LEFT JOIN vv03.dbo.tt_shedule_change (nolock) shCh
				on shCh.ShopNo = d.ShopNo
				and shCh.date = CAST(@date_test as date)
			LEFT JOIN vv03.dbo.tt_shedule_change (nolock) shCh_tomorrow
				on shCh_tomorrow.ShopNo = d.ShopNo
				and shCh_tomorrow.date = DATEADD(DAY,1,CAST(@date_test as date))
			left join vv03.dbo.tt_delivery_load_factor (nolock) f
				on  (f.date = CONVERT(date, @date_test) )
				--(CONVERT(date, f.date) = CONVERT(date, @date_test) )
				and f.id_tt = DR.id_tt
				and f.id_online_service = DR.id_online_service
			left join #tt_online_services_Formulas	osF
				on DR.id_online_service = osF.id_online_service
					--or
					-- CONVERT(date, f.date) = DATEADD(DAY, 1, CONVERT(date, @date_test)) and [date_current] = 0) 
			left join #tt_disable_for_day Dis
				on dis.id_tt = DR.id_tt
				and dis.type_service = os.Type_service
		 WHERE (NOT(DATEDIFF(minute,shCh.H_start, shCh.H_end)=0 and DATEDIFF(minute,shCh_tomorrow.H_start, shCh_tomorrow.H_end)=0) or (shCh.H_start is null and shCh.H_end is null and shCh_tomorrow.H_start is null and shCh_tomorrow.H_end is null))
	)A

	--drop table #tt_disable_for_day

	--exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 110 ,@Date_add_log  OUTPUT, @id_log ,@t_period
	--Set @ms2 = @ms2 + datediff(ms,@d,Getdate())	
	--print convert(nvarchar,@ms2) + ' мс   #tt_delivery Шаг = '	+ convert(nvarchar,datediff(ms,@d,Getdate()))+ ' мс'
	--Set @d = Getdate()
			
			--select * from #api
			--return

	END --IF @RecalculateMode = 1 -- (0 - использовать КЭШ (если в КЭШе не окажется актуальных данных, рассчитывать гео2), 1 - рассчитывать  гео2, не используя КЭШ)


----------------------------- Фильтр по Магазинам ------------------
 
  if @shop_str <> ''
  begin

  set @sql =  '
  update ap
  set filter_shop = 0
  from #api_filter_internal  ap
  where ShopNo not in (' + stuff(@shop_str, 1, 0, '') + ')' 
  

  exec (@sql)
  end

  
  ----------------------------- Фильтр по Партнеру ------------------
  --Не реализовано
  --if @id_partner >0 
  --begin

  --update s
  --set filter_partner=0
  --from #api_filter s
  --where id_partner <> @id_partner
  --end 

  ----------------------------- Фильтр по Сервису ------------------
  
  if @id_service_str <> ''
  begin
  --if object_id('tempdb..#service') is not null drop table #service

  SELECT Value as id_service
  INTO #service
  FROM STRING_SPLIT(@id_service_str, ',')

  update ap
  set filter_service = 0
  from #api_filter_internal ap
  where not exists (select * from #service sp where sp.id_service = ap.id_service)
  end 


  ----------------------------- Фильтр по Слотам ------------------

  if @time_slot_from  <> '' and @time_slot_to <> ''
  begin
  
	if @date_service is null Set @date_service = cast(@date_test as date) --Если при фильтрации по слоту не была передана дата сервиса (сегодня/завтра), то считать, что за сегодня

	--if object_id('tempdb..#slots') is not null drop table #slots
	CREATE TABLE #slots (
			id_online_service tinyint NOT NULL, 
			id_row tinyint NOT NULL, 
			filter_slot bit NOT NULL
			);
	INSERT INTO #slots 
	select 
			f.id_online_service,
			f.id_row,
			SUM(
				iif( S.Date_service = @date_service 
					 and (S.Date_expiration>@date_test or S.Date_expiration is null)
					 and (cast(convert(varchar,s.date_service)+'T'+convert(varchar,f.same_day_order_until,108)as datetime)>@date_test or s.date_current = 0)
					 and ((s.date_current = 0  and ISNULL( s.time_from,f.open_delivery) = @time_slot_from and isnull(s.time_to,DATEADD(minute, DATEPART(hour, S.duration)*60 + DATEPART(minute, S.duration), f.open_delivery)) = @time_slot_to)
						   or  
						  (s.date_current = 1 and s.time_from =  @time_slot_from and s.time_to =  @time_slot_to))
				   , 1 ,0)
			   )filter_slot
			   --,s.*
	 from  #api_filter_internal f
	 cross apply( select Sl.*,
						 iif([date_current] = 1, cast(@date_test as date), cast(@date_test +1 as date)) date_service,
						 cast(convert(varchar,iif([date_current] = 1, cast(@date_test as date), cast(@date_test +1 as date)))+'T'+convert(varchar,[time_expiration],108)as datetime) Date_expiration
	 
				  from [vv03].[dbo].[tt_online_services_Formula_slot] Sl (nolock)
		          where Sl.id_online_service = f.id_online_service 
				  )S
	 group by f.id_online_service,
			  f.id_row

	
	update f
    set f.filter_slot = iif(s.filter_slot>1,1,s.filter_slot)
	--select s.*,f.*
	from #api_filter_internal f
	left join #slots s
	on f.id_row = s.id_row
	
  
  end

  if isnull(@time_count,'') <> '' 
  begin
	if @date_service is null Set @date_service = cast(@date_test as date) --Если при фильтрации по слоту не была передана дата сервиса (сегодня/завтра), то считать, что за сегодня
	
	--if object_id('tempdb..#slots_dur') is not null drop table #slots_dur
	CREATE TABLE #slots_dur (
			date_service date NULL, 
			duration time NULL,
			date_current bit NULL, 
			id_online_service_slot int NULL
			);
	INSERT INTO #slots_dur 
	select  S.date_service, 
			S.duration ,
			S.date_current , 
			DR.id_online_service
	from ( select distinct id_online_service from #api_filter_internal) DR
	cross apply( select Sl.*,
						 iif([date_current] = 1, cast(@date_test as date), cast(@date_test +1 as date)) date_service,
						 cast(convert(varchar,iif([date_current] = 1, cast(@date_test as date), cast(@date_test +1 as date)))+'T'+convert(varchar,[time_expiration],108)as datetime) Date_expiration
	 
				  from [vv03].[dbo].[tt_online_services_Formula_slot] Sl (nolock)
		          where Sl.id_online_service = DR.id_online_service 
				  )S

	where Date_service = @date_service
	and (Date_expiration>@date_test or Date_expiration is null)
	
	
	update f
    set filter_slot = 0
	from #api_filter_internal f
	left join #slots_dur s
	  on f.id_online_service = s.id_online_service_slot
    where   NOT(isnull(s.duration,'') = @time_count)
    or (cast(convert(varchar,s.date_service)+'T'+convert(varchar,f.same_day_order_until,108)as datetime)<@date_test and s.date_current = 1)

  
 end

 
------------------------------- Оплаты ----------------

 if isnull(@type_payment,0) <> 0
 begin


  update  ap
  set filter_type_payment =0
  from #api_filter_internal ap
  join vv03.dbo.tt_delivery_payway  tp (nolock) 
  on tp.ShopNo = ap.ShopNo and tp.gettype = ap.gettype
  where pay_way <> @type_payment

  


  	
	if @only_online = 1 -- только онлайн оплата на партнере
	begin
		
		update  ap
		set filter_type_payment =0
		FROM #api_filter_internal ap
		where not exists(select 1
						 from [vv03].[dbo].[tt_delivery_payway] P (nolock)
						 inner join  [Loyalty].[dbo].[orders_pay_ways] PW (nolock)
						   on PW.payway_id = P.pay_way 
						   and PW.name = 'Онлайн'   --and PW.payway_id = 0
						 where P.ShopNo = ap.shopNo and P.gettype = ap.gettype and P.pay_way = @type_payment)
	
	end 
	Else -- нет ограничений по видам оплат на партнере
	begin
		update  ap
		set filter_type_payment =0
		FROM #api_filter_internal ap
		where not exists(select 1
						 from [vv03].[dbo].[tt_delivery_payway] P (nolock)
						 where P.ShopNo = ap.shopNo and P.gettype = ap.gettype and P.pay_way = @type_payment)
		
	end 




 end

  ------------------------------- Товары (Ограничивающие признаки товаров)----------------
    
 if exists (select * from #tov_limiting_properties)
 begin
  
	update  ap
	set filter_tov =0
	from #api_filter_internal ap
	where exists (  select 1 from  [vv03].[dbo].[tt_gettype_exceptions] g (nolock)
					inner join #tov_limiting_properties lp 
						on lp.id_property = g.id_property
					where g.gettype = ap.gettype
					)	  
 
end
-----------------------------------------end Filtr

	--Сохранение во временную таблицу для внешних процедур
	--Для внешних разработок (не ГЕО)
	IF @use_temporary_table = 1 -- Использовать временнную таблицу #api_services_filter (Объявляется во внешней процедуре и заполняется в текущей)
	Begin
		INSERT INTO #api_services_filter(id_service,
										type_service,
										id_partner,
										id_online_service ,
										id_delivery_service ,
										[gettype],
										[ShopNo],
										[id_tt],
										ServiceDistance,
										delivery_distance_is_route_distance,
										DirectDistance,
										RouteDistance,
										TravelMode  ,
										DurationService,
										DeliveryHoursFrom,
										DeliveryHoursUntil,
										OrderPackingFrom  ,
										OrderPackingUntil ,
										H_start ,
										H_end  ,
										tomorrow_order ,
										H_start_tomorrow   ,
										H_end_tomorrow,
										same_day_order_from,
										same_day_order_until,
										urgency_service,
										open_delivery,
										open_deliveryTM ,
										Priority,
    									[overnight],
										[close_delivery],
										[close_order_delivery],
										[open_order_delivery],
										[open_order_deliveryTM],
										Min_sum_order,
										is_high_demand  
										 
			  )
		SELECT  id_service,
				type_service,
				id_partner,
				id_online_service ,
				id_delivery_service ,
				[gettype],
				[ShopNo],
				[id_tt],
				ServiceDistance,
				delivery_distance_is_route_distance,
				DirectDistance,
				RouteDistance,
				TravelMode  ,
				DurationService,
				DeliveryHoursFrom,
				DeliveryHoursUntil,
				OrderPackingFrom  ,
				OrderPackingUntil ,
				H_start ,
				H_end  ,
				tomorrow_order ,
				H_start_tomorrow   ,
				H_end_tomorrow,
				same_day_order_from,
				same_day_order_until,
				urgency_service,
				open_delivery,
				open_deliveryTM ,
				Priority,
    			[overnight],
				[close_delivery],
				[close_order_delivery],
				[open_order_delivery],
				[open_order_deliveryTM],
				Min_sum_order,
				is_high_demand  
		from #api_filter_internal
		where (disable_for_day = 0  or @gettype_RequestMode = 1)
		and  filter_shop = 1 and filter_partner=1  and filter_service =1 and filter_slot=1  and filter_type_payment = 1 and	filter_time_count  =1 and filter_tov = 1
	
	End --IF @use_temporary_table = 1

	
	--Сохранение во временную таблицу для внешних процедур
	--Для процедуры api_services_buttons (ГЕО)
	IF @exec_from_buttons = 1 -- Использовать временнную таблицу #api_services_filter (Объявляется во внешней процедуре и заполняется в текущей)
	Begin
		INSERT INTO #api_filter(id_row, id_service,type_service,id_partner, id_online_service, id_delivery_service,[gettype],[ShopNo],[id_tt],ServiceDistance,delivery_distance_is_route_distance,
								DirectDistance,RouteDistance,TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,OrderPackingUntil,H_start,H_end,tomorrow_order,
								H_start_tomorrow,H_end_tomorrow,same_day_order_from,same_day_order_until,urgency_service,open_delivery,open_deliveryTM,Priority,[overnight],[close_delivery], 
								[close_order_delivery],[open_order_delivery], [open_order_deliveryTM], text_long_header,[text_long_gettype] ,text_long_tomorrow_gettype ,fl_all_not_work,  
								fl_work_now,Min_sum_order,is_high_demand,filter_shop,filter_partner,filter_service,filter_slot,filter_type_payment,filter_time_count,filter_tov,
								cache_usage,disable_for_day,disable_for_day_tomorrow)
		SELECT  id_row, id_service,type_service,id_partner, id_online_service, id_delivery_service,[gettype],[ShopNo],[id_tt],ServiceDistance,delivery_distance_is_route_distance,
				DirectDistance,RouteDistance,TravelMode,DurationService,DeliveryHoursFrom,DeliveryHoursUntil,OrderPackingFrom,OrderPackingUntil,H_start,H_end,tomorrow_order,
				H_start_tomorrow,H_end_tomorrow,same_day_order_from,same_day_order_until,urgency_service,open_delivery,open_deliveryTM,Priority,[overnight],[close_delivery], 
				[close_order_delivery],[open_order_delivery], [open_order_deliveryTM], text_long_header,[text_long_gettype] ,text_long_tomorrow_gettype ,fl_all_not_work,  
				fl_work_now,Min_sum_order,is_high_demand,filter_shop,filter_partner,filter_service,filter_slot,filter_type_payment,filter_time_count,filter_tov,
				cache_usage,disable_for_day,disable_for_day_tomorrow
		from #api_filter_internal
	End --IF @exec_from_buttons = 1

	----Сохранение в таблицы Express..api_services_filter_20minute_ (1/2/3)
	--if @cache_usage = 0 --только если был пересчет
	--begin
	--	--Определяем номер таблицы, в которую нужно писать в текущий промежуток времени (3 таблицы по 20 минут)
	--	declare @table_insert tinyint
	--	select @table_insert =
	--		   case when DATEPART ( minute, @date ) < 20 Then 1
	--				when DATEPART ( minute, @date ) > 39 Then 3
	--				else 2
	--		   end 	
	--	if @table_insert = 1
	--	insert into Express..api_services_filter_20minute_1 
	--	select  id_service,
	--			type_service,	
	--			id_partner,	
	--			id_online_service,	
	--			id_delivery_service,	
	--			gettype,	
	--			ShopNo,	
	--			Id_tt,	
	--			ServiceDistance,	
	--			delivery_distance_is_route_distance,	
	--			DirectDistance,	
	--			RouteDistance,	
	--			TravelMode,	
	--			DurationService,	
	--			DeliveryHoursFrom,	
	--			DeliveryHoursUntil,	
	--			OrderPackingFrom,	
	--			OrderPackingUntil,	
	--			H_start,	
	--			H_end,	
	--			tomorrow_order,	
	--			H_start_tomorrow,	
	--			H_end_tomorrow,	
	--			same_day_order_from,
	--			same_day_order_until,	
	--			urgency_service,	
	--			open_delivery,	
	--			open_deliveryTM,	
	--			Priority,
	--			isnull(filter_shop,0) as filter_shop,
	--			isnull(filter_partner,0) as filter_partner,
	--			isnull(filter_service,0) as filter_service,
	--			isnull(filter_slot,0) as filter_slot,
	--			isnull(filter_type_payment,0) as filter_type_payment,
	--			isnull(filter_time_count,0) as filter_time_count,
	--			isnull(filter_tov,0)  as filter_tov,
	--			Getdate(),
	--			@id_log,
	--			@t_period,
	--			case when filter_shop = 0 or filter_partner=0  or filter_service =0 or filter_slot=0  or filter_type_payment = 0 or	filter_time_count  =0 or filter_tov = 0 then 0 else 1 end as filter_active,
	--			@id_session,
	--			@id_order,
	--			Min_sum_order,
	--			is_high_demand,
	--			@number,
	--			@latitude,
	--			@longitude,
	--			cache_usage,
	--			disable_for_day,
	--			disable_for_day_tomorrow
	--	from #api_filter_internal
	
	--	if @table_insert = 2
	--	insert into Express..api_services_filter_20minute_2 
	--	select  id_service,
	--			type_service,	
	--			id_partner,	
	--			id_online_service,	
	--			id_delivery_service,	
	--			gettype,	
	--			ShopNo,	
	--			Id_tt,	
	--			ServiceDistance,	
	--			delivery_distance_is_route_distance,	
	--			DirectDistance,	
	--			RouteDistance,	
	--			TravelMode,	
	--			DurationService,	
	--			DeliveryHoursFrom,	
	--			DeliveryHoursUntil,	
	--			OrderPackingFrom,	
	--			OrderPackingUntil,	
	--			H_start,	
	--			H_end,	
	--			tomorrow_order,	
	--			H_start_tomorrow,	
	--			H_end_tomorrow,	
	--			same_day_order_from,
	--			same_day_order_until,	
	--			urgency_service,	
	--			open_delivery,	
	--			open_deliveryTM,	
	--			Priority,
	--			isnull(filter_shop,0) as filter_shop,
	--			isnull(filter_partner,0) as filter_partner,
	--			isnull(filter_service,0) as filter_service,
	--			isnull(filter_slot,0) as filter_slot,
	--			isnull(filter_type_payment,0) as filter_type_payment,
	--			isnull(filter_time_count,0) as filter_time_count,
	--			isnull(filter_tov,0)  as filter_tov,
	--			Getdate(),
	--			@id_log,
	--			@t_period,
	--			case when filter_shop = 0 or filter_partner=0  or filter_service =0 or filter_slot=0  or filter_type_payment = 0 or	filter_time_count  =0 or filter_tov = 0 then 0 else 1 end as filter_active,
	--			@id_session,
	--			@id_order,
	--			Min_sum_order,
	--			is_high_demand,
	--			@number,
	--			@latitude,
	--			@longitude,
	--			cache_usage,
	--			disable_for_day,
	--			disable_for_day_tomorrow
	--	from #api_filter_internal

	--	if @table_insert = 3
	--	insert into Express..api_services_filter_20minute_3 
	--	select  id_service,
	--			type_service,	
	--			id_partner,	
	--			id_online_service,	
	--			id_delivery_service,	
	--			gettype,	
	--			ShopNo,	
	--			Id_tt,	
	--			ServiceDistance,	
	--			delivery_distance_is_route_distance,	
	--			DirectDistance,	
	--			RouteDistance,	
	--			TravelMode,	
	--			DurationService,	
	--			DeliveryHoursFrom,	
	--			DeliveryHoursUntil,	
	--			OrderPackingFrom,	
	--			OrderPackingUntil,	
	--			H_start,	
	--			H_end,	
	--			tomorrow_order,	
	--			H_start_tomorrow,	
	--			H_end_tomorrow,	
	--			same_day_order_from,
	--			same_day_order_until,	
	--			urgency_service,	
	--			open_delivery,	
	--			open_deliveryTM,	
	--			Priority,
	--			isnull(filter_shop,0) as filter_shop,
	--			isnull(filter_partner,0) as filter_partner,
	--			isnull(filter_service,0) as filter_service,
	--			isnull(filter_slot,0) as filter_slot,
	--			isnull(filter_type_payment,0) as filter_type_payment,
	--			isnull(filter_time_count,0) as filter_time_count,
	--			isnull(filter_tov,0)  as filter_tov,
	--			Getdate(),
	--			@id_log,
	--			@t_period,
	--			case when filter_shop = 0 or filter_partner=0  or filter_service =0 or filter_slot=0  or filter_type_payment = 0 or	filter_time_count  =0 or filter_tov = 0 then 0 else 1 end as filter_active,
	--			@id_session,
	--			@id_order,
	--			Min_sum_order,
	--			is_high_demand,
	--			@number,
	--			@latitude,
	--			@longitude,
	--			cache_usage,
	--			disable_for_day,
	--			disable_for_day_tomorrow
	--	 from #api_filter_internal	
	--end --if @cache_usage = 0 --только если был пересчет
	
	 --Вывод результата процедуры
	 declare @c int
	 if  @only_exec = 0
	 begin

	 select 
	   id_service,
	   type_service,	
	   id_partner,	
	   id_online_service,	
	   id_delivery_service,	
	   gettype,	
	   ShopNo,	
	   Id_tt,	
	   ServiceDistance,	
	   delivery_distance_is_route_distance,	
	   DirectDistance,	
	   RouteDistance,	
	   TravelMode,	
	   DurationService,	
	   DeliveryHoursFrom,	
	   DeliveryHoursUntil,	
	   OrderPackingFrom,	
	   OrderPackingUntil,	
	   H_start,	
	   H_end,	
	   tomorrow_order,	
	   H_start_tomorrow,	
	   H_end_tomorrow,	
	   same_day_order_from,
	   same_day_order_until,	
	   urgency_service,	
	   open_delivery,	
	   open_deliveryTM,	
	   Priority,
	   [overnight],
	   [close_delivery], 
	   [close_order_delivery],
		[open_order_delivery], 
		[open_order_deliveryTM],
		text_long_header,
		[text_long_gettype],
		text_long_tomorrow_gettype,
		Min_sum_order,
		is_high_demand,  
	   case when filter_shop = 0 or filter_partner=0  or filter_service=0 or filter_slot=0   or filter_type_payment=0 or filter_time_count=0  or filter_tov = 0 then 0 else 1 end as filter_active,
	   isnull(filter_shop,0) as filter_shop,
	   isnull(filter_partner,0) as filter_partner,
	   isnull(filter_service,0) as filter_service,
	   isnull(filter_slot,0) as filter_slot,
	   isnull(filter_type_payment,0) as filter_type_payment,
	   isnull(filter_time_count,0) as filter_time_count,
	   isnull(filter_tov,0)  as filter_tov
	from #api_filter_internal
	where (disable_for_day = 0 or @gettype_RequestMode = 1)
	Set @c = @@ROWCOUNT

 	--exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 0, @Date_add_log  OUTPUT, @id_log, @t_period
   
   end
   Else Select @c = count(*) from #api_filter_internal

end try

begin catch
			set @error_message = 'Filtering - вся процедура упала ' + rtrim(ERROR_MESSAGE())    
			EXEC Com.dbo.Jobs_Error_Ins @id_job_log, @proc_name, 1, @error_message 
			SET  @XACT_STATE = XACT_STATE() SET @TRANCOUNT = @@TRANCOUNT
			exec jobs.dbo.insert_jobs_log_ins  @id_job_log , @b_id_log , 999 ,@Date_add_log  OUTPUT, @id_log ,@t_period,@XACT_STATE,@TRANCOUNT
			    
end catch 
 
  --передача нижних параметров
  EXEC jobs.dbo.insert_jobs_log_ins @id_job_log,
                                    @b_id_log,
                                    0,
                                    @Date_add_log OUTPUT,
                                    @id_log,
                                    @t_period,
									@c,
									null,
									'count_row_in_result'

END 

  
