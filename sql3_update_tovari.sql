﻿USE [jobs]
GO
/*** Object:  StoredProcedure [dbo].[Update_Tovari] Script Date: 19.08.2021 19:58:06 ***/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Update_Tovari] 
  @id_job int = NULL
AS
BEGIN
  SET NOCOUNT ON;

  --declare  @id_job int =1234
  DECLARE
    @strSQL           nvarchar(4000),
    @job_name         varchar(100) = ISNULL(Com.dbo.Object_name_for_err(@@PROCID, DB_ID()), 'Update_Tovari'),
    @Main_server_name varchar(100) = Com.dbo.Get_Main_Server_Name(),
    @err_msg          varchar(1000)

  IF OBJECT_ID('tempdb..#Tovari') IS NOT NULL
    DROP TABLE #Tovari;

  CREATE TABLE #Tovari (
    id_tov              int,
    name_tov            nvarchar(150),
    ЕстьАктХар          int,
    ЕстьНовХар          int,
    [is_alc]            smallint,
    [IsComplect]        int,
    Ed_Izm              varchar(50),
    Ves                 numeric(15, 3),
    id_tov_web          int,
    kvant_ves_tov       decimal(15, 3),
    Vivedena            binary(1),
    VivedenFromPlg      binary(1),
    id_tov_Osnovn       int,
    id_group            int,
    Price               decimal(15, 2),
    CatAssStr           varchar(30),
    ВесДляСайта         varchar(100),
    N_tov               numeric(10, 3),
    bez_ostatkov        int,
    TradeMark           int,
    nds                 decimal(3, 2),
    Весовой             bit,
    Name_Tov_For_Search varchar(255),
    СреднВес            decimal(10, 2),
	IsUsluga			bit,
	scenario			int,
    INDEX ind1 (id_tov)
  );

  SET @strSQL = N'EXEC(''
		IF OBJECT_ID(''''tempdb..#tov'''') IS NOT NULL DROP TABLE #tov
		IF OBJECT_ID(''''tempdb..#gran'''') IS NOT NULL DROP TABLE #gran
		IF OBJECT_ID(''''tempdb..#res'''') IS NOT NULL DROP TABLE #res
		--
		SELECT	t.id_tov,
				t.Name_tov,
				t.ЕстьАктХар,
				t.ЕстьНовХар,
				t.[is_alc],
				t.IsComplect,
				t.Ed_Izm,
				t.Ves,
				t.id_tov_web,
				CONVERT(decimal(15, 3), NULL) kvant_ves_tov,
				t.Vivedena,
				t.VivedenFromPlg,
				ISNULL(tz.id_tov_Osnovn, t.id_tov) id_tov_Osnovn,
				t.id_group,
				isnull(pr.Price,0) Price,
				t.CatAssStr,
				CONVERT(varchar(100), t.ВесДляСайта) ВесДляСайта,
				t.N_tov,
				T.bez_ostatkov,
				TradeMark,
				isnull(t.nds,0.2) nds,
				Весовой,
				Name_Tov_For_Search = rtrim(REPLACE(t.Name_tov, ''''ё'''', ''''е''''))
				 + case when charindex(''''томат '''',t.Name_tov,1)>0 then '''' помидор '''' else '''''''' end
				 + case when charindex(''''томаты'''',t.Name_tov,1)>0 then '''' томат '''' else '''''''' end
				 + case when charindex(''''томаты'''',t.Name_tov,1)>0 then '''' помидоры '''' else '''''''' end
				 + case when charindex(''''томаты'''',t.Name_tov,1)>0 then '''' помидор '''' else '''''''' end
				 + case when charindex(''''помидор'''',t.Name_tov,1)>0 then '''' томат'''' else '''''''' end
				 + case when charindex(''''батон '''',t.Name_tov,1)>0 then '''' хлеб'''' else '''''''' end
				 + case when charindex(''''картофель'''',t.Name_tov,1)>0 then '''' картошка'''' else '''''''' end
				 + case when charindex(''''хлеб '''',t.Name_tov,1)>0 then '''' батон'''' else '''''''' end
				 + case when charindex(''''картошка'''',t.Name_tov,1)>0 then '''' картофель'''' else '''''''' end
				 + case when charindex(''''соус'''',t.Name_tov,1)>0 then '''' кетчуп'''' else '''''''' end
				 + case when charindex(''''сельдь'''',t.Name_tov,1)>0 then '''' селедка'''' else '''''''' end
				 + case when charindex(''''кабачков'''',t.Name_tov,1)>0 then '''' кабачковая'''' else '''''''' end
				 + case when charindex(''''сгущенн'''',t.Name_tov,1)>0 then '''' сгущенка'''' else '''''''' end
				 + case when charindex(''''сгущен'''',t.Name_tov,1)>0 then '''' сгущенка'''' else '''''''' end
				 + case when charindex(''''сгущённ'''',t.Name_tov,1)>0 then '''' сгущенка'''' else '''''''' end
				 + case when charindex(''''сгущён'''',t.Name_tov,1)>0 then '''' сгущенка'''' else '''''''' end
				 ,t.СреднВес
				 ,t.IsUsluga
				 ,t.scenario
		INTO #tov
		FROM M2.dbo.Tovari t
			LEFT JOIN Reports.dbo.tov_poln_zamenyaem tz ON tz.id_tov_Zadvoen = t.id_tov
			LEFT JOIN Reports.dbo.Price_1C_tov AS pr ON t.id_tov = pr.id_tov
		--
		SELECT	id_tov_cl,
				MAX(Quantity) - 0.001 AS max_q,
				MIN(quantity) + 0.001 min_q
		INTO #gran
		FROM SMS_UNION.dbo.CheckLine AS cl WITH (NOLOCK)
			INNER JOIN (SELECT id_tov
						FROM #tov
						WHERE	Ed_Izm = ''''кг''''
							AND Vivedena = 0
							AND ISNULL(VivedenFromPlg, 0) <> 1) tov ON cl.id_tov_cl = tov.id_tov
		WHERE Quantity <> 0
		GROUP BY id_tov_cl
		--
		SELECT	cl.id_tov_cl id_tov,
				AVG(quantity) qty
		INTO #res
		FROM SMS_UNION.dbo.CheckLine AS cl WITH (NOLOCK)
			INNER JOIN #gran AS gr ON cl.id_tov_cl = gr.id_tov_cl
		WHERE Quantity BETWEEN gr.min_q AND gr.max_q
		GROUP BY cl.id_tov_cl
		--
		DROP TABLE #gran
		--
		UPDATE #tov SET kvant_ves_tov = r.qty
		FROM #tov AS tov
			INNER JOIN #res AS r ON tov.id_tov = r.id_tov
		--
		DROP TABLE #res
		--  
		SELECT * FROM #tov order by id_tov
		--
		DROP TABLE #tov	'') at ' + @Main_server_name;

  INSERT INTO #Tovari (
    id_tov,
    name_tov,
    ЕстьАктХар,
    ЕстьНовХар,
    [is_alc],
    [IsComplect],
    Ed_Izm,
    Ves,
    id_tov_web,
    kvant_ves_tov,
    Vivedena,
    VivedenFromPlg,
    id_tov_Osnovn,
    id_group,
    Price,
    CatAssStr,
    ВесДляСайта,
    N_tov,
    bez_ostatkov,
    TradeMark,
    nds,
    Весовой,
    Name_Tov_For_Search,
    СреднВес,
	IsUsluga,
	scenario
  )
  EXEC sys.sp_executesql @strSQL;

  --CREATE INDEX ind1 ON #Tovari (id_tov)

  --PIM
  INSERT INTO #Tovari (
    id_tov,
    name_tov,
    ЕстьАктХар,
    ЕстьНовХар,
    [is_alc],
    [IsComplect],
    Ed_Izm,
    Ves,
    id_tov_web,
    kvant_ves_tov,
    Vivedena,
    VivedenFromPlg,
    id_tov_Osnovn,
    id_group,
    Price,
    CatAssStr,
    ВесДляСайта,
    N_tov,
    bez_ostatkov,
    TradeMark,
    nds,
    Весовой,
    Name_Tov_For_Search,
    СреднВес,
	IsUsluga,
	scenario
  )
  SELECT DISTINCT
    PP.id_tov,
    PP.title AS name_tov,
    0 AS [ЕстьАктХар],
    0 AS [ЕстьНовХар],
    0 AS is_alc,
    0 AS isComplect,
    'шт' AS Ed_Izm,
    ISNULL(PP.weight_kg, 0) AS Ves,
    0 AS id_tov_web,
    NULL AS kvant_ves_tov,
    NULL AS Vivedena,
    NULL AS VivedenFromPlg,
    PP.id_tov AS id_tov_Osnovn,
    MAX(CI.group_id) AS id_group,
    PP.price_regular AS Price,
    '' AS CatAssStr,
    '' AS [ВесДляСайта],
    0 AS N_tov,
    0 AS bez_ostatkov,
    NULL AS TradeMark,
    0.20 AS nds,
    0 AS [Весовой],
    PP.title AS Name_Tov_For_Search,
    0 AS [СреднВес],
	0 AS IsUsluga,
	0 AS scenario
  FROM vv03.dbo.vw_catalog_PIM_Products PP
  JOIN vv03.dbo.Catalog_Groups_Items CI
    ON CI.id_tov = PP.id_tov 
  GROUP BY PP.id_tov,
    PP.title,
    ISNULL(PP.weight_kg, 0),
    PP.price_regular,
    PP.title;

  --PIM END
  IF OBJECT_ID('tempdb..#tWEB') IS NOT NULL
    DROP TABLE #tWEB;

  SELECT DISTINCT
         tweb.id_tov,
         tweb.Group_name
  INTO
    #tWEB
  FROM vv03.dbo.WEB_Catalog_Tovari_vw tweb (NOLOCK);

  CREATE INDEX ind1 ON #tWEB (id_tov);

  UPDATE
    #Tovari
  SET
    Name_Tov_For_Search = RTRIM(t.Name_Tov_For_Search) + ' ' + s.add_search
  FROM #Tovari t
  INNER JOIN ( SELECT
                 f.id_tov,
                 f.Name_tov,
                 f.Name_Tov_For_Search,
                 CASE WHEN ISNULL(ts.place_group_id, 0) = 28 OR CHARINDEX('витрин', f.add_search, 1) > 0 THEN '' ELSE
                                                                                                              ISNULL(
                                                                                                              f.add_search,
                                                                                                              '')END add_search,
                 f.Group_name
               FROM (
                      -- ничего не добавлять в Группу тк одно из слов в группе совпало с названием
                      SELECT DISTINCT
                             tov.id_tov,
                             tov.Name_tov,
                             tov.Name_Tov_For_Search,
                             NULL [add_search],
                             tweb.Group_name
                      FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
                      --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov and id_group_parent1 is null
                      INNER JOIN #tWEB tweb
                        ON tweb.id_tov = tov.id_tov
                      CROSS APPLY jobs.dbo.devide_slova(tov.Name_tov) a
                      CROSS APPLY jobs.dbo.devide_slova(tweb.Group_name) b
                      WHERE Com.dbo.compare_words_clr(a.val, b.val) <= 2
                            AND LEN(a.val) >= 3
                      UNION

                      -- добавить название группы, тк только 1 слово
                      SELECT
                        tov.id_tov,
                        tov.Name_tov,
                        tov.Name_Tov_For_Search,
                        tweb.Group_name,
                        tweb.Group_name
                      FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
                      --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov and id_group_parent1 is null
                      INNER JOIN #tWEB tweb
                        ON tweb.id_tov = tov.id_tov
                      LEFT JOIN ( SELECT DISTINCT
                                         tov.id_tov
                                  FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
                                  --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov and id_group_parent1 is null
                                  INNER JOIN #tWEB tweb
                                    ON tweb.id_tov = tov.id_tov
                                  CROSS APPLY jobs.dbo.devide_slova(tov.Name_tov) a
                                  CROSS APPLY jobs.dbo.devide_slova(tweb.Group_name) b
                                  WHERE Com.dbo.compare_words_clr(a.val, b.val) <= 2
                                        AND LEN(a.val) >= 3) d
                        ON d.id_tov = tov.id_tov
                      WHERE d.id_tov IS NULL
                            AND CHARINDEX(',', tweb.Group_name, 1) = 0
                      UNION

                      -- самое сложное - если в группе несколько слов. 
                      SELECT
                        tov.id_tov,
                        tov.Name_tov,
                        tov.Name_Tov_For_Search,
                        CASE WHEN ts.Group_name IS NOT NULL THEN
                               tad.additional_descr --если в группе исключения, то добавить исключение
                          ELSE
                            tweb.Group_name
                        END,
                        tweb.Group_name Group_name_old
                      FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
                      --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov and id_group_parent1 is null
                      INNER JOIN #tWEB tweb
                        ON tweb.id_tov = tov.id_tov
                      LEFT JOIN ( SELECT DISTINCT
                                         tov.id_tov
                                  FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
                                  --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov and id_group_parent1 is null
                                  INNER JOIN #tWEB tweb
                                    ON tweb.id_tov = tov.id_tov
                                  CROSS APPLY jobs.dbo.devide_slova(tov.Name_tov) a
                                  CROSS APPLY jobs.dbo.devide_slova(tweb.Group_name) b
                                  WHERE Com.dbo.compare_words_clr(a.val, b.val) <= 2
                                        AND LEN(a.val) >= 3) d
                        ON d.id_tov = tov.id_tov
                      LEFT JOIN (
                                  -- исправленные группы
                                  SELECT DISTINCT
                                         tweb.Group_name
                                  FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
                                  --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov and id_group_parent1 is null
                                  INNER JOIN #tWEB tweb
                                    ON tweb.id_tov = tov.id_tov
                                  INNER JOIN [vv03].[dbo].[Tovar_additional_descr] tad
                                    ON tov.id_tov = tad.id_tov) ts
                        ON ts.Group_name = tweb.Group_name
                      LEFT JOIN [vv03].[dbo].[Tovar_additional_descr] tad
                        ON tov.id_tov = tad.id_tov
                      WHERE d.id_tov IS NULL
                            AND CHARINDEX(',', tweb.Group_name, 1) > 0) f
               LEFT JOIN [vv03].[dbo].[Tovar_storage_place] ts (NOLOCK)
                 ON ts.id_tov = f.id_tov) s
    ON t.id_tov = s.id_tov
  WHERE s.add_search <> '';

  UPDATE #Tovari
  SET Name_Tov_For_Search = RTRIM(t.Name_Tov_For_Search) + ' ' + tad.additional_descr
  FROM #Tovari t
  INNER JOIN [vv03].[dbo].[Tovar_additional_descr] tad
    ON tad.id_tov = t.id_tov;

  -- АК - 28082020. - добавление исправление сокращения в Name_Tov_For_Search по [Loyalty].[dbo].[reduction_word]
  DECLARE @ii int = 0;

  SELECT 1;

  WHILE @@ROWCOUNT <> 0 AND @ii <= 20
  BEGIN
    SET @ii = @ii + 1;

    UPDATE #Tovari
    SET Name_Tov_For_Search = Name_Tov_For_Search_new
    FROM #Tovari t
    INNER JOIN ( SELECT TOP 1 WITH TIES
                        t.id_tov, --t.Name_Tov_For_Search, 
                        REPLACE(
                          RTRIM(t.Name_Tov_For_Search) + ' ',
                          ' ' + RTRIM(r.word_short) + ' ',
                          ' ' + RTRIM(r.word_full) + ' ') Name_Tov_For_Search_new
                 FROM #Tovari t
                 INNER JOIN [Loyalty].[dbo].[reduction_word] r (NOLOCK)
                   ON CHARINDEX(' ' + RTRIM(r.word_short) + ' ', RTRIM(t.Name_Tov_For_Search) + ' ', 1) > 0
                 ORDER BY ROW_NUMBER() OVER (PARTITION BY t.id_tov ORDER BY t.id_tov)) t2
      ON t.id_tov = t2.id_tov;
  END;

  UPDATE #Tovari
  SET Name_Tov_For_Search = REPLACE(Name_Tov_For_Search, '-', ' ')
  FROM #Tovari;

  declare @tovari_update bit = 0

  IF EXISTS ( SELECT 1
              FROM ( SELECT
                       a.id_tov,
                       name_tov = a.Name_tov,
                       ЕстьАктХар = a.ЕстьАктХар,
                       ЕстьНовХар = a.ЕстьНовХар,
                       [is_alc] = a.is_alc,
                       [IsComplect] = a.IsComplect,
                       Ed_Izm = a.Ed_Izm,
                       Ves = a.Ves,
                       kvant_ves_tov = a.kvant_ves_tov,
                       id_tov_web = a.id_tov_web,
                       id_tov_Osnovn = a.id_tov_Osnovn,
                       id_group = a.id_group,
                       Price_tov = a.price_tov,
                       CatAssStr = a.CatAssStr,
                       ВесДляСайта = a.ВесДляСайта,
                       N_tov = a.N_tov,
                       bez_ostatkov = a.bez_ostatkov,
                       TradeMark = a.TradeMark,
                       nds = a.nds,
                       vesovoi = a.vesovoi,
                       Name_Tov_For_Search = a.Name_Tov_For_Search,
                       СреднВес = a.СреднВес,
					   IsUsluga = a.IsUsluga,
					   scenario = a.scenario
                     FROM vv03.dbo.Tovari a WITH (NOLOCK)
                     UNION ALL
                     SELECT
                       a.id_tov,
                       a.name_tov,
                       a.ЕстьАктХар,
                       a.ЕстьНовХар,
                       a.is_alc,
                       a.IsComplect,
                       a.Ed_Izm,
                       a.Ves,
                       a.kvant_ves_tov,
                       a.id_tov_web,
                       a.id_tov_Osnovn,
                       a.id_group,
                       a.Price,
                       a.CatAssStr,
                       a.ВесДляСайта,
                       a.N_tov,
                       a.bez_ostatkov,
                       a.TradeMark,
                       a.nds,
                       a.Весовой,
                       a.Name_Tov_For_Search,
                       a.СреднВес,
					   a.IsUsluga,
					   a.scenario
                     FROM #Tovari a) t
              GROUP BY t.id_tov,
                       t.name_tov,
                       t.ЕстьАктХар,
                       t.ЕстьНовХар,
                       t.is_alc,
                       t.IsComplect,
                       t.Ed_Izm,
                       t.Ves,
                       t.kvant_ves_tov,
                       t.id_tov_web,
                       t.id_tov_Osnovn,
                       t.id_group,
                       t.Price_tov,
                       t.CatAssStr,
                       t.ВесДляСайта,
                       t.N_tov,
                       t.bez_ostatkov,
                       t.TradeMark,
                       t.nds,
                       t.vesovoi,
                       t.Name_Tov_For_Search,
                       t.СреднВес,
					   t.IsUsluga,
					   t.scenario
              HAVING COUNT(1) <> 2)
  BEGIN

  Set @tovari_update = 1

    WHILE 1 = 1
    BEGIN
      BEGIN TRY
        UPDATE vv03.dbo.Tovari
        SET
          Name_tov = a.name_tov,
          ЕстьАктХар = ISNULL(a.ЕстьАктХар, 0),
          ЕстьНовХар = ISNULL(a.ЕстьНовХар, 0),
          [is_alc] = ISNULL(a.[is_alc], 0),
          [IsComplect] = ISNULL(a.[IsComplect], 0),
          Ed_Izm = ISNULL(a.Ed_Izm, ''),
          Ves = ISNULL(a.Ves, 0),
          kvant_ves_tov = a.kvant_ves_tov,
          id_tov_web = a.id_tov_web,
          id_tov_Osnovn = a.id_tov_Osnovn,
          id_group = a.id_group,
          price_tov = a.Price,
          CatAssStr = a.CatAssStr,
          ВесДляСайта = a.ВесДляСайта,
          N_tov = a.N_tov,
          bez_ostatkov = a.bez_ostatkov,
          TradeMark = a.TradeMark,
          nds = a.nds,
          vesovoi = a.Весовой,
          Name_Tov_For_Search = a.Name_Tov_For_Search,
          СреднВес = a.СреднВес,
		  IsUsluga = a.IsUsluga,
		  scenario = a.scenario
        FROM vv03.dbo.Tovari c
        INNER JOIN #Tovari a
          ON c.id_tov = a.id_tov
        WHERE c.Name_tov <> a.name_tov
              OR ISNULL(c.ЕстьАктХар, 0) <> ISNULL(a.ЕстьАктХар, 0)
              OR c.ЕстьАктХар IS NULL
              OR ISNULL(c.ЕстьНовХар, 0) <> ISNULL(a.ЕстьНовХар, 0)
              OR c.ЕстьНовХар IS NULL
              OR ISNULL(c.[is_alc], 0) <> ISNULL(a.[is_alc], 0)
              OR c.is_alc IS NULL
              OR ISNULL(c.[IsComplect], 0) <> ISNULL(a.[IsComplect], 0)
              OR a.IsComplect IS NULL
              OR ISNULL(c.[Ed_Izm], '') <> ISNULL(a.[Ed_Izm], '')
              OR c.Ed_Izm IS NULL
              OR ISNULL(c.Ves, 0) <> ISNULL(a.Ves, 0)
              OR c.Ves IS NULL
              OR ISNULL(c.kvant_ves_tov, 0) <> ISNULL(a.kvant_ves_tov, 0)
              OR c.kvant_ves_tov IS NULL
              OR ISNULL(c.id_tov_web, 0) <> ISNULL(a.id_tov_web, 0)
              OR c.id_tov_web IS NULL
              OR ISNULL(c.id_tov_Osnovn, 0) <> ISNULL(a.id_tov_Osnovn, 0)
              OR c.id_tov_Osnovn IS NULL
              OR ISNULL(c.id_group, 0) <> ISNULL(a.id_group, 0)
              OR c.id_group IS NULL
              OR ISNULL(c.price_tov, 0) <> ISNULL(a.Price, 0)
              OR c.price_tov IS NULL
              OR ISNULL(c.CatAssStr, '') <> ISNULL(a.CatAssStr, '')
              OR c.CatAssStr IS NULL
              OR ISNULL(c.ВесДляСайта, '') <> ISNULL(a.ВесДляСайта, '')
              OR c.ВесДляСайта IS NULL
              OR ISNULL(c.N_tov, 0) <> ISNULL(a.N_tov, 0)
              OR c.N_tov IS NULL
              OR ISNULL(c.bez_ostatkov, 0) <> ISNULL(a.bez_ostatkov, 0)
              OR c.bez_ostatkov IS NULL
              OR ISNULL(c.TradeMark, 0) <> ISNULL(a.TradeMark, 0)
              OR c.TradeMark IS NULL
              OR ISNULL(c.nds, 0) <> ISNULL(a.nds, 0)
              OR ISNULL(c.vesovoi, 0) <> ISNULL(a.Весовой, 0)
              OR c.vesovoi IS NULL
              OR ISNULL(c.Name_Tov_For_Search, '') <> ISNULL(a.Name_Tov_For_Search, '')
              OR c.Name_Tov_For_Search IS NULL
              OR ISNULL(c.СреднВес, 0) <> ISNULL(a.СреднВес, 0)
              OR c.СреднВес IS NULL
			  OR ISNULL(c.IsUsluga, 0) <> ISNULL(a.IsUsluga, 0)
              OR c.IsUsluga IS NULL
			  OR ISNULL(c.scenario, 0) <> ISNULL(a.scenario, 0)
              OR c.scenario IS NULL;

        INSERT INTO vv03.dbo.Tovari (
          id_tov,
          Name_tov,
          ЕстьАктХар,
          ЕстьНовХар,
          [is_alc],
          [IsComplect],
          Ed_Izm,
          Ves,
          kvant_ves_tov,
          id_tov_web,
          id_tov_Osnovn,
          id_group,
          price_tov,
          CatAssStr,
          ВесДляСайта,
          N_tov,
          bez_ostatkov,
          TradeMark,
          nds,
          vesovoi,
          Name_Tov_For_Search,
          СреднВес,
		  IsUsluga,
		  scenario
        )
        SELECT
          a.id_tov,
          a.name_tov,
          ISNULL(a.ЕстьАктХар, 0),
          ISNULL(a.ЕстьНовХар, 0),
          ISNULL(a.[is_alc], 0),
          ISNULL(a.[IsComplect], 0),
          ISNULL(a.[Ed_Izm], ''),
          ISNULL(a.Ves, 0),
          a.kvant_ves_tov,
          a.id_tov_web,
          ISNULL(a.id_tov_Osnovn, 0),
          ISNULL(a.id_group, 0),
          ISNULL(a.Price, 0),
          ISNULL(a.CatAssStr, ''),
          ISNULL(a.ВесДляСайта, ''),
          ISNULL(a.N_tov, 0),
          ISNULL(a.bez_ostatkov, 0),
          ISNULL(a.TradeMark, 0),
          ISNULL(a.nds, 0),
          ISNULL(a.Весовой, 0),
          a.Name_Tov_For_Search,
          ISNULL(a.СреднВес, 0),
		  ISNULL(a.IsUsluga,0),
		  ISNULL(a.scenario,0)
        FROM vv03.dbo.Tovari c
        RIGHT JOIN #Tovari a
          ON c.id_tov = a.id_tov
        WHERE c.id_tov IS NULL
          AND
            a.id_tov <> -604001 -- MV чтобы погасить ошибку, далее нужно разобраться

        IF EXISTS (SELECT TOP 1 * FROM #Tovari) -- ASN 210429 
        BEGIN
          DELETE FROM vv03.dbo.Tovari
          FROM vv03.dbo.Tovari c
          LEFT JOIN #Tovari a
            ON c.id_tov = a.id_tov
          WHERE a.id_tov IS NULL;
        END;

        BREAK;
      END TRY
      BEGIN CATCH
        IF ERROR_NUMBER() <> 1205 --вызвала взаимоблокировку
        BEGIN
          SET @err_msg = ERROR_MESSAGE()
          
          EXEC Com.dbo.Jobs_Error_Ins @id_job, @job_name, 40, @err_msg

          RETURN;
        END;
      END CATCH;
    END; --while	

    IF EXISTS ( SELECT 1
                FROM ( SELECT
                         a.id_tov,
                         name_tov = a.Name_tov,
                         ЕстьАктХар = a.ЕстьАктХар,
                         ЕстьНовХар = a.ЕстьНовХар,
                         [is_alc] = a.is_alc,
                         [IsComplect] = a.IsComplect,
                         Ed_Izm = a.Ed_Izm,
                         Ves = a.Ves,
                         kvant_ves_tov = a.kvant_ves_tov,
                         id_tov_web = a.id_tov_web,
                         id_tov_Osnovn = a.id_tov_Osnovn,
                         id_group = a.id_group,
                         Price_tov = a.price_tov,
                         CatAssStr = a.CatAssStr,
                         ВесДляСайта = a.ВесДляСайта,
                         N_tov = a.N_tov,
                         bez_ostatkov = a.bez_ostatkov,
                         TradeMark = a.TradeMark,
                         nds = a.nds,
                         vesovoi = a.vesovoi,
                         Name_Tov_For_Search = a.Name_Tov_For_Search,
                         СреднВес = a.СреднВес,
						 IsUsluga = a.IsUsluga,
						 scenario = a.scenario
                       FROM vv03.dbo.Tovari a WITH (NOLOCK)
                       UNION ALL
                       SELECT
                         a.id_tov,
                         a.name_tov,
                         a.ЕстьАктХар,
                         a.ЕстьНовХар,
                         a.is_alc,
                         a.IsComplect,
                         a.Ed_Izm,
                         a.Ves,
                         a.kvant_ves_tov,
                         a.id_tov_web,
                         a.id_tov_Osnovn,
                         a.id_group,
                         a.Price,
                         a.CatAssStr,
                         a.ВесДляСайта,
                         a.N_tov,
                         a.bez_ostatkov,
                         a.TradeMark,
                         a.nds,
                         a.Весовой,
                         a.Name_Tov_For_Search,
                         a.СреднВес,
						 a.IsUsluga,
						 a.scenario
                       FROM #Tovari a) t
                GROUP BY t.id_tov,
                         t.name_tov,
                         t.ЕстьАктХар,
                         t.ЕстьНовХар,
                         t.is_alc,
                         t.IsComplect,
                         t.Ed_Izm,
                         t.Ves,
                         t.kvant_ves_tov,
                         t.id_tov_web,
                         t.id_tov_Osnovn,
                         t.id_group,
                         t.Price_tov,
                         t.CatAssStr,
                         t.ВесДляСайта,
                         t.N_tov,
                         t.bez_ostatkov,
                         t.TradeMark,
                         t.nds,
                         t.vesovoi,
                         t.Name_Tov_For_Search,
                         t.СреднВес,
						 t.IsUsluga,
						 t.scenario
                HAVING COUNT(1) <> 2)
    BEGIN
      SET @err_msg = 'Расхождения при обновлении таблицы товаров (vv03.dbo.Tovari) на 03 сервере.'
          
      EXEC Com.dbo.Jobs_Error_Ins @id_job, @job_name, 50, @err_msg
    END;
  END;

  if @tovari_update=0 
  return -- значит не было обновлений в справочнике товаров


  --DROP TABLE #Tovari;

  -------------------------------- Krivenko
  -- обновление слогов для быстрого поиска по каталогу
  SELECT DISTINCT
    tov.id_tov,
    a.val
  INTO #a
  FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
  --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov  and id_group_parent1 is null
  INNER JOIN #tWEB tweb
    ON tweb.id_tov = tov.id_tov
  CROSS APPLY jobs.dbo.devide_slog(tov.Name_Tov_For_Search) a;

  INSERT INTO #a  
  SELECT DISTINCT
         tov.id_tov,
         b.val
  FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
  --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov  and id_group_parent1 is null
  INNER JOIN #tWEB tweb
    ON tweb.id_tov = tov.id_tov
  CROSS APPLY jobs.dbo.devide_slova(tov.Name_Tov_For_Search) a
  CROSS APPLY jobs.dbo.devide_slog(jobs.dbo.without_double_bukv(a.val)) b
  LEFT JOIN #a aa
    ON tov.id_tov = aa.id_tov
       AND aa.val = b.val
  WHERE jobs.dbo.without_double_bukv(a.val) <> a.val
        AND aa.id_tov IS NULL;

  INSERT INTO #a
  SELECT DISTINCT
         tov.id_tov,
         a.val
  FROM vv03.dbo.Tovari AS tov WITH (NOLOCK)
  --inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov  and id_group_parent1 is null
  INNER JOIN #tWEB tweb
    ON tweb.id_tov = tov.id_tov
  CROSS APPLY jobs.dbo.devide_slova(tov.Name_Tov_For_Search) a
  LEFT JOIN #a aa
    ON tov.id_tov = aa.id_tov
       AND a.val = aa.val
  WHERE LEN(a.val) = 4
        AND aa.id_tov IS NULL;

  SELECT
    b.val,
    ( SELECT
        ',' + RTRIM(a.id_tov)
      FROM #a a
      WHERE a.val = b.val
      ORDER BY id_tov
      FOR XML PATH('')) id_tov_str
  INTO
    #b
  FROM #a b
  GROUP BY val;

  CREATE UNIQUE CLUSTERED INDEX ind1 ON #b (val);

  Declare @update_name int = 0 

  UPDATE vv03.dbo.Name_Tov_For_Search_str
  SET
    id_tov_str = b.id_tov_str , date_upd = getdate()
  --select *
  FROM vv03.dbo.Name_Tov_For_Search_str a
  INNER JOIN #b b
    ON a.val = b.val
  WHERE a.id_tov_str <> b.id_tov_str;

  set  @update_name =  @update_name + @@ROWCOUNT


  IF EXISTS (SELECT TOP 1 * FROM #b) --ASN
  BEGIN
    DELETE vv03.dbo.Name_Tov_For_Search_str
    --select *
    FROM vv03.dbo.Name_Tov_For_Search_str a
    LEFT JOIN #b b
      ON a.val = b.val
    WHERE b.id_tov_str IS NULL;

	set  @update_name =  @update_name + @@ROWCOUNT

  END;

  INSERT INTO vv03.dbo.Name_Tov_For_Search_str (
    val,
    id_tov_str,
	 q_len ,
	 date_upd
  )
  SELECT
    b.val,
    b.id_tov_str,
	len(rtrim(b.val)),
	getdate()
  FROM #b b
  LEFT JOIN vv03.dbo.Name_Tov_For_Search_str a
    ON a.val = b.val
  WHERE a.id_tov_str IS NULL;

  set  @update_name =  @update_name + @@ROWCOUNT

  if @update_name = 0 -- значит изменений нет
  return
  -------------------------------- Krivenko
  -- обновление разбиение по словам в каталоге по каталогу

  --drop table #Name_Tov_For_Search_devide_slova
  SELECT DISTINCT
         tov.id_tov,
         ds.val
  INTO
    #Name_Tov_For_Search_devide_slova
  FROM vv03.dbo.Tovari tov
  --	inner join vv03.dbo.WEB_Catalog_Tovari_vw tweb (nolock) on tweb.id_tov = tov.id_tov and id_group_parent1 is null
  INNER JOIN #tWEB tWEB
    ON tWEB.id_tov = tov.id_tov
  CROSS APPLY jobs.dbo.devide_slova(tov.Name_Tov_For_Search) ds;

  /**
update vv03.dbo.Name_Tov_For_Search_devide_slova

select *
from vv03.dbo.Name_Tov_For_Search_devide_slova a
inner join #Name_Tov_For_Search_devide_slova b on a.id_tov = b.id_tov and a.val = b.val
where a.val <> b.val
**/
  INSERT INTO vv03.dbo.Name_Tov_For_Search_devide_slova (
    id_tov,
    val,
    Len_val
  )
  SELECT
    b.id_tov,
    b.val,
    LEN(b.val)
  FROM #Name_Tov_For_Search_devide_slova b
  LEFT JOIN vv03.dbo.Name_Tov_For_Search_devide_slova a
    ON a.id_tov = b.id_tov
       AND a.val = b.val
  WHERE a.val IS NULL;

  IF EXISTS (SELECT TOP 1 * FROM #Name_Tov_For_Search_devide_slova) --ASN
  BEGIN
    DELETE vv03.dbo.Name_Tov_For_Search_devide_slova
    --select *
    FROM vv03.dbo.Name_Tov_For_Search_devide_slova a
    LEFT JOIN #Name_Tov_For_Search_devide_slova b
      ON a.id_tov = b.id_tov
         AND a.val = b.val
    WHERE b.val IS NULL;
  END;

  -- очистить кэш  , те поменять таблицы кэша поиска
insert into jobs..jobs (job_name , prefix_job )
select  'jobs.dbo.clear_cache_search' , 0


END;
