USE [Loyalty]
GO
/****** Object:  StoredProcedure [dbo].[API_services_filtering_kirn]    Script Date: 30.06.2021 18:26:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kirn
-- Create date:	2021-05-13
-- Description: Вызывающая процедура для процедуры фильтрации данных Geo (обертка)
-- Vl@d 2021-05-13 Ничего не менял, проверил как работает metahistory
-- Vl@d 2021-06-03 Восстановление обертки
--<LAST> kirn 2021-06-28 тестирование новых формул</last>

-- =============================================
 ALTER   PROCEDURE [dbo].[API_services_filtering_kirn]
	@latitude      numeric(18, 15) =0.0,
	@longitude     numeric(18, 15) =0.0,
	@number        char(7) 		 = NULL,   -- карта клиента
	@ShopNo        int           = NULL,   -- для самовывоза
	@OnlyThisShop  int			 = NULL,   --устарел, не использовать
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
	@shop_str       varchar(max)= null,
	@id_partner     int = null,
	@type_payment   tinyint = null,
	@id_service_str varchar(max) = '',
	@time_slot_from time ='',
	@time_slot_to   time = '',
	@time_count     time = '',
    @date_service   date = null,           -- дата сервиса для фильтрации по слоту (сегодня/завтра)
	@tov_str        varchar(max) = '',
	@str_part       varchar(max) = '',     -- устарел, не использовать
	@id_order       int =0,
	@Use_only_casch bit            = 0,    -- Отключить расчет гео (брать только из кеша) для ситуаций, когда сервер под нагрузкой
	@gettype_RequestMode bit       = 0,    -- режим для определения служб для конкурса такси (не учитывается отключение магазинов, окончание времени приемки заказов
	@tov_limiting_properties  varchar(50)    = null,    --вариативный-- Ограничивающие свойства товаров (Термолабильность, заморозка и т.д.)  
	@id_parcel      int = Null
AS
BEGIN
  SET NOCOUNT ON;

	

  /*
  
    -- Блок параметров для тестирования
DECLARE
  	@latitude numeric(18,15) = 55.856124,   	
       
	@longitude numeric(18,15) = 38.412563,
	@number      char(7)       = 'C785580', -- из приложений обязательно его передавать
	@ShopNo        int             = NULL, -- для самовывоза
	@OnlyThisShop int			 = NULL,
	@date_test     datetime        = '2021-03-27T09:31:00', -- для теста
	@RecalculateMode bit           = 0, -- режим пересчета (0 - использовать КЭШ (если в КЭШе нет данных, рассчитывать гео), 1 - рассчитывать  гео)
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
	@time_slot_from time = '10:00:00',
	@time_slot_to   time = '11:00:00',
	@time_count     time = '',--'02:00:00',
	@date_service   date = '2021-03-28', --для фильтрации по слоту
	@tov_str        varchar(max) = '',
	@str_part       varchar(max) = '',
	@id_order       int =0,
	@Use_only_casch bit            = 0,
	@gettype_RequestMode bit       = 0
 
  
 
 --*/

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



	begin try  
	declare         @id_job as int = 1,     
					@error_message as varchar(4000),        
					@isok int =0 ,     
					@proc_name nvarchar(max) = DB_NAME() + '.' + OBJECT_SCHEMA_NAME(@@PROCID) + '.' + OBJECT_NAME(@@PROCID)     

	while @isok = 0   	
		  begin	
		    begin try	
			 exec loyalty..[API_services_filtering_new_real_kirn]
						@latitude      = @latitude,
						@longitude     = @longitude,
						@number        = @number,
						@ShopNo        = @ShopNo,
						--@OnlyThisShop  = @OnlyThisShop,
						@date_test     = @date_test ,
						@id_cart       = @id_cart,
						@Device_type   = @Device_type ,
						@id_version    = @id_version,
						@id_screen     = @id_screen,
						@id_element    = @id_element,
						@source        = @source,
						@str_par       = @isok,
						@RecalculateMode = @RecalculateMode,
						@id_session    = @id_session,
						@exec_from_buttons = @exec_from_buttons,
						@only_exec     = @only_exec,
						@use_temporary_table = @use_temporary_table,
						@shop_str       = @shop_str,
						@id_partner     = @id_partner, 
						@type_payment   = @type_payment,
						@id_service_str = @id_service_str,
						@time_slot_from = @time_slot_from,
						@time_slot_to   = @time_slot_to,
						@time_count     = @time_count,
						@date_service   = @date_service,
						@tov_str        = @tov_str,
						@id_order       = @id_order,
						@Use_only_casch = @Use_only_casch,
						@gettype_RequestMode = @gettype_RequestMode,
						@tov_limiting_properties =  @tov_limiting_properties,
						@id_parcel    = @id_parcel   
		     break -- успешный выход      
		    end try    
		    begin catch         
		      if (  case when (   CHARINDEX('вызвала взаимоблокировку ресурсов' ,ERROR_MESSAGE() ,1) >0          
				               or CHARINDEX('необходимые ресурсы потоков' , ERROR_MESSAGE() ,1) >0          
				               or CHARINDEX('изменилось с момента компиляции' , ERROR_MESSAGE() ,1) >0                         
				               or CHARINDEX('удалось выделить новую страницу' , ERROR_MESSAGE() ,1) >0  
							   or CHARINDEX('количество строк в первом запросе недоступно' , ERROR_MESSAGE() ,1) >0 
				               or CHARINDEX('Текущая транзакция не может' , ERROR_MESSAGE() ,1) >0 ) then 1 else 0 end )      = 0   
							    
		         begin        -- или запуск старой процедуры     -- или выход        Select @isok =1 -- плохой выход      
		           set @error_message = 'Error: '+ERROR_MESSAGE() + ' id = '+cast(@id_log as varchar) + ' t_peroid = ' + cast(@t_period as varchar) 
				   EXEC Com.dbo.Jobs_Error_Ins 0, @proc_name, 1, @error_message         
                  /*
                    exec loyalty..[API_services_filtering_old]
						@latitude      = @latitude,
						@longitude     = @longitude,
						@number        = @number,
						@ShopNo        = @ShopNo,
						--@OnlyThisShop  = @OnlyThisShop,
						@date_test     = @date_test ,
						@id_cart       = @id_cart,
						@Device_type   = @Device_type ,
						@id_version    = @id_version,
						@id_screen     = @id_screen,
						@id_element    = @id_element,
						@source        = @source,
						@str_par       = @str_par,
						@RecalculateMode = @RecalculateMode,
						@id_session    = @id_session,
						@exec_from_buttons = @exec_from_buttons,
						@only_exec     = @only_exec,
						@use_temporary_table = @use_temporary_table,
						@shop_str       = @shop_str,
						@id_partner     = @id_partner, 
						@type_payment   = @type_payment,
						@id_service_str = @id_service_str,
						@time_slot_from = @time_slot_from,
						@time_slot_to   = @time_slot_to,
						@time_count     = @time_count,
						@date_service   = @date_service,
						@tov_str        = @tov_str,
						--@str_part       = @str_part,
						@id_order       = @id_order,
						@Use_only_casch = @Use_only_casch,
						@gettype_RequestMode = @gettype_RequestMode,
						@tov_limiting_properties =  @tov_limiting_properties,
						@id_parcel    = @id_parcel   
						
		           set @error_message = 'выполнилась API_services_filtering_old'	
		           EXEC Com.dbo.Jobs_Error_Ins 0, @proc_name, 1, @error_message   */   
                             break --выход    
		        end    	
		    end catch
			set @isok = @isok +1
		  end    -- end while   
	end try    
	
	begin catch        
	  set @error_message = 'вся процедура упала ' + rtrim(ERROR_MESSAGE())    
	  EXEC Com.dbo.Jobs_Error_Ins 0, @proc_name, 1, @error_message        
	end catch  

 
  --передача нижних параметров
  EXEC jobs.dbo.insert_jobs_log_ins @id_job_log,
                                    @b_id_log,
                                    0,
                                    @Date_add_log OUTPUT,
                                    @id_log,
                                    @t_period

END 

