-- [DELETED] ТАБЛИЦА МРОТ ПО МЕСЯЦАМ И ПО РЕГИОНАМ. ЗАПОЛНЯТЬСЯ ДОЛЖНА ВРУЧНУЮ, ИЗ ЭКСЕЛЬ ФАЙЛА
--  CREATE MULTISET TABLE SBX_DB_SME_DKK_ANALYSE.BM_mrot,
--    NO FALLBACK,
--    NO BEFORE JOURNAL,
--    NO AFTER JOURNAL,
--    CHECKSUM = DEFAULT,
--    DEFAULT MERGEBLOCKRATIO
--    (
--  region_raw_old_tb_structure VARCHAR(512) CHARACTER SET Unicode NOT CaseSpecific,
--  region_cleared VARCHAR(512) CHARACTER SET Unicode NOT CaseSpecific Compress (NULL,'Алтайский край','Амурская область'
--  ,'Архангельская область','Астраханская область','Белгородская область','Брянская область','Владимирская область','Волгоградская область'
--  ,'Вологодская область','Вороежская область','г. Москва','г. Санкт-Петербург','г.Москва','г.Санкт-Петербург','Еврейская автономная область'
--  ,'Забайкальский край','Ивановская область','Иркутская область','Кабардино-Балкарская Республика','Калининградская область'
--  ,'Калужская область','Камчатский край','Кемеровская область','Кировская область','Костромская область','Краснодарский край'
--  ,'Красноярский край','Курганская область','Курская область','Ленинградская область','Липецкая область','Магаданская область'
--  ,'Московская область','Мурманская область','Ненецкий автономный округ','Нижегородская область','Новгородская область'
--  ,'Новосибирская область','Омская область','Оренбургская область','Орловская область','Пензенская область','Пермский край','Приморский край'
--  ,'Псковская область','Республика Адыгея','Республика Алтай (Горный Алтай)','Республика Башкортостан','Республика Бурятия'
--  ,'Республика Дагестан','Республика Ингушетия','Республика Калмыкия','Республика Карачаево-Черкессия','Республика Карелия'
--  ,'Республика Коми','Республика Марий Эл','Республика Мордовия','Республика Саха (Якутия)','Республика Северная Осетия-Алания'
--  ,'Республика Татарстан','Республика Тыва','Республика Хакасия','Ростовская область','Рязанская область','Самарская область','Саратовская область'
--  ,'Сахалинская область','Свердловская область','Смоленская область','Ставропольский край','Тамбовская область','Тверская область'
--  ,'Томская область','Тульская область','Тюменская область','Удмуртская республика','Ульяновская область','Хабаровский Край'
--  ,'Ханты-Мансийский автономный округ - Югра','Ханты-Мансийский АО - Югра','Челябинская область','Чеченская республика'
--  ,'Чувашская Республика - Чувашия','Чукотский автономный округ','Ямало-Немецкий автономный округ'
--  ,'Ямало-Ненецкий АО','Ярославская область'),
--  federal_district VARCHAR(512) CHARACTER SET Unicode NOT CaseSpecific Compress (NULL, 'Дальневосточный федеральный округ'
--  ,'Приволжский федеральный округ','Северо-западный федеральный округ','Северо-Кавказский федеральный округ'
--  ,'Сибирский федеральный округ','Уральский федеральный округ','Центральный федеральный округ','Южный федеральный округ'),
--  Minimal_salary DECIMAL(18,2) Compress (5205.00,5207.00,5277.00,5338.00,5500.00,5535.00,5554.00,5652.00,5683.00,5721.00,
--  5800.00,5864.00,5965.00,5995.00,6000.00,6100.00,6200.00,6204.00,6303.00,6372.00,6469.00,6492.79,6500.00,6614.00,6700.00,
--  6800.00,6845.00,6900.00,7000.00,7005.00,7090.00,7160.00,7240.00,7279.00,7500.00,7548.00,7600.00,7800.00,7918.00,7938.00,
--  8027.00,8252.00,8326.00,8500.00,8645.00,9000.00,9030.00,9112.00,9445.00,9489.00,9500.00,10000.00,10067.00,10250.00,
--  10440.00,11050.00,11163.00,11171.00,11280.00,11854.00,12000.00,12013.00,12075.00,12130.00,12075.00,12130.00,12200.00,
--  12400.00,12431.00,12515.00,14000.00,14440.00,15720.00),
--  Actual_from DATE format 'yyyy-mm-dd',
--  Actual_to DATE format 'yyyy-mm-dd'
--  )
--  PRIMARY INDEX (region_raw_old_tb_structure);

-- [DELETED]
--  INSERT INTO SBX_DB_SME_DKK_ANALYSE.BM_mrot(?,?,?,?,?,?)
--  SELECT * FROM SBX_DB_SME_DKK_ANALYSE.BM_mrot;

-- [DELETED]
--  CREATE MULTISET TABLE SBX_DB_SME_DKK_ANALYSE.BM_mrot_moving,
--    NO FALLBACK,
--    NO BEFORE JOURNAL,
--    NO AFTER JUORNAL,
--    CHECKSUM = DEFAULT,
--    DEFAULT MERGEBLOCKRATIO
--    (
--      report_dt DATE Format 'dd.mm.yyyy',
--      MROT_monthly DECIMAL(18,2),
--      MROT_annual DECIMAL(18,2)
--    )
--    PRIMARY INDEX (report_dt);

-- [DELETED]
--  DELETE FROM SBX_DB_SME_DKK_ANALYSE.BM_mrot_moving;
-- [DELETED]
--  INSERT INTO SBX_DB_SME_DKK_ANALYSE.BM_mrot_moving (?,?,?);
--  SELECT * FROM SBX_DB_SME_DKK_ANALYSE.BM_mrot_moving;

-- [DELETED] ТАБЛИЦА С ПОМЕСЯЧНЫМИ ДОХОДАМИ
--  DROP TABLE SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month;
--  CREATE MULTISET TABLE SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month,
--    NO FALLBACK,
--    NO BEFORE JOURNAL,
--    NO AFTER JOURNAL,
--    CHECKSUM = DEFAULT,
--    DEFAULT MERGEBLOCKRATIO
--    (
--     report_dt DATE Format 'yyyy-mm-dd',
--     client_dk BIGINT DEFAULT -1,
--     tb_old SMALLINT Compress (2, 13, 16, 18, 31, 36, 40, 42, 44, 49, 52, 54 55, 60, 67, 70, 77, 92, 99),
--     osb_old SMALLINT Compress (2, 3, 1806, 17, 7954, 1569, 7970, 7977, 7978, 7981, 7982, 5940, 9013, 4157, 6984,
--         6991, 9040, 9042, 7003, 9055, 5221, 8556, 5230, 8558, 9070, 8047, 8567, 7811, 8579, 7813, 8585, 8586, 8588,
--         8589, 8590, 8591, 8592, 8593, 8594, 8595, 8596, 8597, 8598, 8599, 8600, 8601, 8602, 8603, 8604, 8605,
--         5278, 8606, 8607, 8608, 5281, 8609, 8610, 8611, 8612, 8613, 8614, 8615, 8616, 8617, 8618, 8619, 8620,
--         8621, 8622, 8623, 8624, 8369, 8625, 8626, 8627, 8628, 8629, 8630, 8631, 8632, 8633, 8634, 8635, 8636,
--         8637, 8638, 8639, 8640, 8643, 8644, 8645, 8646, 8647, 8901, 1790, 1791),
--     vsp_old SMALLINT Compress (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 268, 14, 270, 526, 15, 16, 17, 18, 19, 20, 21,
--     22, 23, 24, 280, 25, 26, 27, 28, 29, 30, 31, 32, 800, 34, 35, 38, 40, 41, 42, 43, 299, 44, 300, 45, 301, 46, 47,
--     48, 49, 50, 306, 51, 52, 308, 53, 54, 55, 311, 56, 57, 313, 314, 60, 61, 62, 63, 64, 67, 69, 71, 72, 73, 330,
--     77, 78, 80, 81, 84, 86, 87, 88, 600, 89, 90, 7770, 91, 7771, 7772, 93, 349, 7773, 94, 95, 7775, 96, 7777,
--     98, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119,
--     375, 121, 122, 123, 124, 125, 127, 128, 129, 130, 133, 134, 135, 136, 137, 393, 138, 139, 140
--     141, 400, 145, 146, 149, 150, 151, 152, 153, 154, 155, 156, ,157, 158, 159, 160, 161, 162, 164, 166, 167, 168,
--     169, 170, 171, 172, 174, 175, 182, 183, 186, 188, 700, 191, 192, 195, 196, 197, 200, 201, 202, 203, 205, 206, 208,
--    720, 210, 723, 214, 727, 216, 728, 217, 1755, 226, 227, 228, 1764, 229, 231, 232, 233, 234, 235, 237, 243, 500, 245,
--     246, 249, 254),
--     salary_flag SMALLINT Compress (1,0,NULL),
--     salary_sum DECIMAL (18,2) Compress (NULL, 5000.00, 10000.00, 3000.00, 4000.00, 2000.00, 6000.00. 13050.00,
--     17400.00, 7000.00, 8700.00, 8000.00, 15000.00, 10440.00, 20000.00, 26100.00, 21750.00, 1000.00, 15660.00, 12000.00,
--     10005.00, 20010.00, 9000.00, 34800.00, 30000.00, 30450.00, 6525.00, 11310.00, 6960.00, 3500.00, 2500.00, 12180.00,
--     25000.00, 7830.00, 13920.00),
--     pension_sum DECIMAL(18, 2) Compress (NULL, 2850.26, 2780.74, 2638.27, 2972.82, 2337.13, 2465.67, 2225.84, 5000.00,
--     505.73, 518.37, 479.82, 540.66, 425.05, 448.43, 404.81, 2109.80, 300.00, 600.00, 1265.15, 1296.78, 1352.54, 1200.33,
--     1063.32, 1012.69, 8803.00, 1121.80, 383.71, 800.00, 1775.07, 3000.00, 2731.32, 1731.77, 1851.40, 20000.00, 4451.68,
--     2664.70, 4000.00, 1500.00, 2528.18, 25000.00, 2848.77, 4674.26, 1643.04, 2239.60, 621.00, 2000.00, 1455.50, 1600.00,
--     2362.78, 8801.00, 2164.42, 1535.55, 2075.19, 1000.00, 5945.64, 1386.19, 2024.57, 2132.95, 1352.00, 1920.84, 1952.00,
--     236.80, 4931.34, 8726.00, 8000.00, 1620.57, 10878.85, 2552.00, 5700.52, 1701.59, 809.62, 4894.00, 10574.23, 8680.00,
--     6476.75, 11108.34, 6653.97, 8488.00, 1795.17, 6302.08, 7384.72)
--     )
--     PRIMARY AMP INDEX (report_dt, client_dk)
--     PARTITION BY (COLUMN ADD 200. Range_N(report_dt BETWEEN DATE '2013-01-01' AND DATE '2022-12-31' EACH INTERVAL '1' MONTH));


DROP PROCEDURE SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month_procedure;
CREATE PROCEDURE SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month_procedure ( )
DYNAMIC RESULT SETS 1 SQL SECURITY Creator
BEGIN
  DECLARE first_day_of_month DATE;
  SELECT '2015-08-01' INTO first_day_of_month;
  WHILE first_day_of_month <= '2020-05-01' DO
    BEGIN
        DELETE FROM SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month WHERE report_dt = first_day_of_month + INTERVAL '1' MONTH - INTERVAL '1' DAY ;
        INSERT INTO SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month
        SELECT
          report_dt,
          client_dk,
          prd_lst_prod_tb_cd AS tb_old,
          prd_lst_prod_osb_cd AS osb_old,
          prd_lst_prod_vsp_cd AS vsp_old,
          lbt_payroll_client_nflag AS salary_flag,
          lbt_inf_payroll_rub_amt AS salary_sum,
          lbt_inf_social_rum_amt AS pension_sum,
          lbt_inf_intr_cap_rub_amt AS other_incomes_sum
         FROM SBX_Retail_DATA.ft_clnt_aggr_mnth
         WHERE
           lbt_payroll_client_nflag=1 AND
           report_dt = first_day_of_month + INTERVAL '1' MONTH - INTERVAL '1' DAY ;
        SET first_day_of_month = first_day_of_month + INTERVAL '1' MONTH ;
    END;
  END WHILE;
END;

CALL SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month_procedure ( ) ;

-- [DELETED] ТАБЛИЦА С СУММАРНЫМИ ДОХОДАМИ ЗА ГОД
--  DROP TABLE SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_12m_sum;
--  CREATE MULTISET TABLE SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_12m_sum,
--      NO FALLBACK ,
--      NO BEFORE JOURNAL,
--      NO AFTER JOURNAL,
--      CHECKSUM = DEFAULT,
--      DEFAULT MERGEBLOCKRATIO
--      (
--         client_dk BIGINT DEFAULT -1 ,
--         report_dt DATE Format 'yyyy-mm-dd',
--         salary_12m_sum DECIMAL (18,2) Compress (3625.00, 1666.67, 3333.33, 5000.00, 41667.00, 8333.33, 4350.00,
--           10000.00, 1250.00, 500.00, 1905.50, 1450.00, 3262.50, 8700.00, 833.33, 2610.00, 83.33, 2500.00, 928.17, 4166.67,
--           2175.00, 1000.00, 13050.00, 1740.00, 9166.67, 1305.00, 977.33, 2083.33, 1087.50, 2900.00, 6525.00, 870.00, 17400.00),
--         months_with_salary INTEGER Compress (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
--      )
--  PRIMARY AMP INDEX ( client_dk, report_dt )
--  PARTITION BY ( COLUMN ADD 200, Range_N(report_dt BETWEEN DATE '2013-01-01' AND DATE '2022-12-31' EACH INTERVAL '1' MONTH ));

DROP PROCEDURE SBX_DB_SME_DKK_ANALYSE.DM_client_incomdes_12m_sum_procedure;
CREATE PROCEDURE SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_12m_sum_procedure ( )
DYNAMIC RESULT SETS 1 SQL SECURITY Creator
BEGIN
    DECLARE first_day_of_month DATE;
        SELECT '2019-01-01' INTO first_day_of_month;
    WHILE first_day_of_month <= '2020-04-01' DO
      BEGIN
        DELETE FROM SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_12m_sum WHERE report_dt = first_day_of_month + 1
        INSERT INTO SBX_DB_SME_DKK_ANALYSE.DM_client_incomes_12m_sum
        SELECT client_dk,
          (first_day_of_month + INTERVAL '1' MONTH - INTERVAL '1' DAY) AS report_dt,
          Sum(salary_sum) AS salary_12m_sum,
          Average(salary_sum) AS salary_12m_avg,
          Sum(CASE WHEN salary_sum>0 THEN 1 ELSE 0 end) AS months_with_salary,
          Sum(pension_sum) AS retirement_payments_12m_sum,
          Sum(CASE WHEN pension_sum>0 THEN 1 ELSE 0 end) AS months_with_retirement_payments
          FROM SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month
          WHERE
          report_dt<= (first_day_of_month + INTERVAL '1' MONTH - INTERVAL '1' DAY)
          AND report_dt > (first_day_of_month - INTERVAL '1' YEAR + INTERVAL '1' MONTH - INTERVAL '1' DAY)
          GROUP BY client_dk;
        SET first_day_of_month = first_day_of_month + INTERVAL '1' MONTH;
      END;
    END WHILE;
END;

CALL SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_12m_sum_procedure ( );

-- ТАБЛИЦА С РЕГИОНОМ И ГОРОДОМ КЛИЕНТА, А ТАКЖЕ ЕГО ДОХОДАМИ ЗА МЕСЯЦ И ЗА ГОД
DROP TABLE BM_clients_with_region_and_city_part1;
DROP TABLE DM_clients_with_region_and_city_part2;
DROP TABLE BM_clients_with_region_and_city_part3;
DROP TABLE BM_clients_count_by_period;
DROP TABLE BM_clients_ranking;
DROP TABLE BM_clients_with_region_and_city_part5;

CREATE MULTISET VOLATILE TABLE BM_clients_with_region_and_city_part1
AS
(
SELECT
  m.client_dk,
  m.report_dt,
  m.tb_old,
  m.osb_old,
  m.vsp_old,
  m.salary_sum,
  y.salary_12m_sum,
  y.months_with_salary,
  m.pension_sum AS retirement_payment_sum,
  y.retirement_payments_12m_sum,
  y.months_with_retirement_payments
FROM SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month AS m
LEFT JOIN SBX_DB_SME_DKK_ANALYSE.BM_client_incomes_per_month AS m
  ON m.client_dk = y.client_dk AND m.report_dt = y.report_dt
WHERE m.report_dt>='2017-01-01' AND m.report_dt<'2017-04-01'
)
WITH DATA PRIMARY INDEX (client_dk, report_dt) ON COMMIT PRESERVE ROWS;

--
CREATE MULTISET VOLATILE TABLE BM_clients_with_region_and_city_part2 AS
(
  SELECT
    cl.client_dk,
    cl.report_dt,
    cl.salary_sum,
    cl.salary_12m_sum,
    cl.months_with_salary,
    cl.retirement_payments_sum,
    cl.retirement_payments_12m_sum,
    cl.months_with_retirement_payments,
    CASE WHEN vsp_dict.region_name = 'г.Москва' THEN 'г. Москва'
    WHEN vsp_dict.region_name = 'г.Санкт-Петербург' THEN 'г. Санкт-Петербург'
    WHEN vsp_dict.region_name = 'Ханты-Мансийский АО - Югра' THEN 'Ханты-Мансийский автономный округ - Югра'
    WHEN vsp_dict.region_name = 'Чувашская Республика - Чувашия' THEN 'Чувашская Республика'
    WHEN vsp_dict.region_name = 'Ямало-Ненецкий АО' THEN 'Ямало-Ненецкий автономный округ'
    WHEN vsp_dict.region_name = 'Еврейская АО' THEN 'Еврейская автономная область'
    WHEN vsp_dict.region_name = 'Республика Алтай' THEN 'Республика Алтай (Горный Алтай)'
    WHEN vsp_dict.region_name = 'Республика Северная Осетия - Алания' THEN 'Республика Северная Осетия-Алания'
    WHEN vsp_dict.region_name = 'Чукотский АО' THEN 'Чукотский автономный округ'
    WHEN vsp_dict.region_name = 'Карачаево-Черкесская Республика' THEN 'Республика Карачаево-Черкессия'
    ELSE vsp_dict.region_name
    END AS region,
    (CASE
      WHEN Position('r-' IN vsp_dict.svspaddress)>0 AND Position(',' IN Substr(vsp_dict.svspaddress, Position('r.' IN vsp_dict.svspaddress), 512))>0
        THEN Trim(Substr(vsp_dict.svspaddress, Position('r.' IN vsp_dict.svspaddress)+2, Position(',' IN Substr(vsp_dict.svspaddress, Position('r.' IN vsp_dict.svsvpaddress)+2, 512))-1)
      WHEN vsp_dict.svspaddress IS NULL OR svspaddress = 'Не определено' THEN 'Address not defined'
      ELSE 'Not a city'
      end) AS city
    FROM BM_clients_with_region_and_city_part1 AS cl
    LEFT JOIN SBX_DB_SME_DKK_ANALYSE.ra_vsp_region_v2 AS vsp_dict
      ON (cl.tb_old = vsp_dict.TB_old AND cl.osb_old = vsp_dict.OSB_old AND cl.vsp_old = vsp_dict.vsp_old)
)
WITH DATA PRIMARY INDEX (client_dk, report_dt) ON COMMIT PRESERVE ROWS;

--
CREATE MULTISET VOLATILE TABLE BM_clients_with_region_and_city_part3 AS
(
SELECT
  cl.client_dk,
  cl.report_dt,
  -- mrot.federal_district,
  cl.region,
  cl.city,
  cl.salary_sum,
  cl.salary_12m_sum,
  cl.months_with_salary,
  cl.retirement_payments_sum,
  cl.retirement_payments_12m_sum,
  cl.months_with_retirement_payments,
  mrot.mrot_monthly AS mrot_monthly_incl_tax,
  mrot.mrot_annual AS mrot_annual_incl_tax,
  (CASE WHEN salary_12m_sum / months_with_salary >= mrot_annual_incl_tax * 0.87 THEN 1 ELSE 0 END) AS salary_exceeds_mrot
FROM BM_clients_with_region_and_city_part2 AS cl
LEFT JOIN SBX_DB_SME_DKK_ANALYSE.BM_mrot_moving AS mrot
  ON mrot.report_dt = cl.report_dt
  -- mrot.region_raw_old_tb_structure = Coalesce(cl.Region, 'Россия') AND mrot.actual_to >= cl.report_dt
)
WITH DATA PRIMARY INDEX (client_dk, report_dt) ON COMMIT PRESERVE ROWS;

--
CREATE MULTISET VOLATILE TABLE BM_clients_count_by_period AS
(
  SELECT
    report_dt,
    Count(1) AS count_clients_total,
    Sum(salary_exceeds_mrot) AS count_clients_with_salary_more_than_mrot
  FROM BM_clients_with_region_and_city_part3
  GROUP BY report_dt
)
WITH DATA PRIMARY INDEX (report_dt) ON COMMIT PRESERVE ROWS;

-- [DELETED]
-- CREATE MULTISET TABLE SBX_DB_SME_DKK_ANALYSE.BM_clients_count_by_period,
--     NO FALLBACK ,
--     NO BEFORE JOURNAL,
--     NO AFTER JOURNAL,
--     CHECKSUM = DEFAULT,
--     DEFAULT MERGEBLOCKRATIO
-- (
--    report_dt DATE format 'YYYY-MM-DD',
--    count_clients_total bigint,
--    count_clients_with_salary_more_than_mrot bigint
-- )
-- PRIMARY INDEX ( report_dt );

INSERT INTO SBX_DB_SME_DKK_ANALYSE.BM_clients_count_by_period SELECT * FROM BM_clients_count_by_period;
SELECT * FROM SBX_DB_SME_DKK_ANALYSE.BM_clients_count_by_period ORDER BY report_dt;

CREATE MULTISET VOLATILE TABLE BM_clients_ranking AS
(
  SELECT
    cl.client_dk,
    cl.report_dt,
    Row_Number() Over (PARTITION BY cl.report_dt ORDER BY salary_12m_sum / months_with_salary, months_with_salary DESC, client_dk) AS client_rank,
    Cast(client_rank AS DECIMAL(16,6)) / Cast(count_clients_total AS DECIMAL(16,6)) AS client_percentile,
    counts.count_clients_total AS clients_in_current_period,
    counts.count_clients_with_salary_more_than_mrot AS clients_with_salary_exceeding_mrot
  FROM BM_clients_with_region_and_city_part3 AS cl
  LEFT JOIN BM_clients_count_by_period AS counts ON cl.report_dt = counts.report_dt
  -- WHERE salary_exceeds_mrot = 1
)
WITH DATA PRIMARY INDEX (client_dk, report_dt) ON COMMIT PRESERVE ROWS;

CREATE MULTISET VOLATILE TABLE BM_clients_with_region_and_city_part5 AS
(
    SELECT
      cl.*,
      Coalesce(ranks.client_percentile, -1) AS client_percentile,
      Coalesce(ranks.client_rank, -1) AS client_rank,
      ranks.clients_in_current_period,
      ranks.clients_with_salary_exceeding_mrot,
    FROM BM_clients_with_region_and_city_part3 AS cl
    LEFT JOIN BM_clients_ranking AS ranks ON cl.report_dt = ranks.report_dt AND cl.client_dk = ranks.client_dk
)
WITH DATA PRIMARY INDEX (client_dk, report_dt) ON COMMIT PRESERVE ROWS;

-- [DELETED]
--  CREATE MULTISET TABLE SBX_DB_SME_DKK_ANALYSE.BM_clients_with_region_city_and_income,
--      NO FALLBACK ,
--      NO BEFORE JOURNAL ,
--      NO AFTER JOURNAL ,
--      CHECKSUM = DEFAULT ,
--      DEFAULT MERGEBLOCKRATIO
--    (
--      client_dk BIGINT,
--      report_dt DATE Format 'YYYY-MM-DD',
--      region VARCHAR(512) CHARACTER SET Unicode NOT CaseSpecific Compress,
--      city VARCHAR(512) CHARACTER SET Unicode NOT CaseSpecific Compress,
--      salary_sum DECIMAL(18,2) Compress,
--      salary_12m_sum DECIMAL(18,2) Compress,
--      months_with_salary SMALLINT Compress,
--      retirement_payments_sum DECIMAL(18,2) Compress,
--      retirement_payments_12m_sum DECIMAL(18,2) Compress,
--      months_with_retirement_payments SMALLINT Compress,
--      mrot_annual_incl_tax DECIMAL(18,2) Compress,
--      salary_exceeds_mrot BYTEINT Compress,
--      client_percentile DECIMAL(18,6) Compress,
--      client_rank BIGINT Compress
--    )
--  PRIMARY AMP INDEX ( client_dk, report_dt )
--  PARTITION BY ( COLUMN ADD 200, Range_N(report_dt BETWEEN DATE '2013-01-1' AND DATE '2030-12-31' EACH INTERVAL '1' MONTH));

--  DELETE FROM SBX_DB_SME_DKK_ANALYSE.BM_clients_with_region_city_and_income;

INSERT INTO SBX_DB_SME_DKK_ANALYSE.BM_clients_with_region_city_and_income
SELECT client_dk, report_dt, region, city, salary_sum, salary_12m_sum, months_with_salary,
retirement_payments_sum, retirement_payments_12m_sum, months_with_retirement_payments, mrot_annual_incl_tax,
salary_exceeds_mrot, client_percentile, client_rank FROM BM_clients_with_region_and_city_parts;

-- [DELETED] ТАБЛИЦА СО ВСЕМИ ИНТЕРЕСУЮЩИМИ НАС ПОКАЗАТЕЛЯМИ ПО КАЖДОМУ КЛИЕНТУ
--  DROP TABLE SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics_by_month;
--  CREATE MULTISET TABLE SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics_by_month,
--      NO FALLBACK, NO BEFORE JOURNAL, NO AFTER JOURNAL,
--      CHECKSUM = DEFAULT,
--      DEFAULT MERGEBLOCKRATIO (
--        client_dk BIGINT DEFAULT -1 ,
--        report_dt DATE Format 'yyyy-mm-dd',
--        region VARCHAR(512) CHARACTER SET Unicode NOT CaseSpecific Compress,
--        city VARCHAR(512) CHARACTER SET Unicode NOT CaseSpecific Compress,
--        salary_sum DECIMAL(18,2) Compress,
--        salary_12m_sum DECIMAL(18,2) Compress,
--        months_with_salary SMALLINT Compress (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
--        retirement_payments_sum DECIMAL(18,2) Compress (0.00, NULL),
--        retirement_payments_12m_sum DECIMAL(18,2) Compress (0.00, NULL),
--        months_with_retirement_payments SMALLINT Compress (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12),
--        mrot_annual_incl_tax DECIMAL(18,2) Compress,
--        salary_exceeds_mrot BYTEINT Compress(NULL, 0, 1),
--        client_percentile DECIMAL(6, 4) Compress,
--        client_rank BIGINT Compress,
--        gender CHAR(1) CHARACTER SET Latin NOT CaseSpecific Compress ('F', 'M'),
--        age_years SMALLINT Compress,
--        retirement_flag BYTEINT DEFAULT 0 Compress (0, 1),
--        checking_accounts_balance DECIMAL(18,2) Compress,
--        saving_accounts_balance DECIMAL(18, 2) Compress,
--        metal_accounts_balance DECIMAL(18, 2) Compress,
--        saving_certificates_balance DECIMAL(18, 2) Compress,
--        debet_cards_balance DECIMAL(18, 2) Compress,
--        credit_cards_own_money_balance DECIMAL(18, 2) Compress,
--        credit_cards_due_balance DECIMAL(18, 2) Compress,
--        personal_credits_left DECIMAL(18, 2) Compress,
--        mortgage_left DECIMAL(18, 2) Compress,
--        personal_credits_interest DECIMAL(18, 2) Compress,
--        mortgage_interest DECIMAL(18, 2) Compress,
--        all_credits_left_due_part DECIMAL(18, 2) Compress,
--        all_credits_left_overdue_part DECIMAL(18, 2) Compress,
--        all_credits_left_overdue_percents_part DECIMAL(18, 2) Compress,
--        credit_payments DECIMAL(18, 2) Compress,
--        credit_cards_opened_flag SMALLINT Compress,
--        deposits_opened_flag SMALLINT Compress,
--        personal_loans_opened_flag SMALLINT Compress,
--        mortgages_opened_flag SMALLINT Compress,
--        pos_spent_total DECIMAL(18, 2) Compress,
--        mdm_id BIGINT DEFAULT -1 Compress )
--      PRIMARY AMP INDEX (report_dt, client_dk)
--      PARTITION BY ( COLUMN ADD 200, Range_N(report_dt BETWEEN DATE '2013-01-01' AND DATE '2022-12-31' EACH INTERVAL '1' MONTH ));

DROP TABLE BM_clients_statistics;
CREATE MULTISET VOLATILE TABLE BM_clients_statistics AS
(
  SELECT
    cl.client_dk,
    cl.report_dt,
    info.region,
    info.city,
    ( CASE WHEN info.salary_sum = 0 THEN NULL ELSE info.salary_sum END ) AS salary_sum,
    ( CASE WHEN info.salary_12m_sum = 0 THEN NULL ELSE info.salary_12m_sum END ) AS salary_12m_sum,
    info.months_with_salary,
    ( CASE WHEN info.retirement_payments_sum = 0 THEN NULL ELSE info.retirement_payments_sum END ) AS retirement_payments_sum,
    ( CASE WHEN info.retirement_payments_12m_sum = 0 THEN NULL ELSE info.retirement_payments_12m_sum END ) AS retirement_payments_12m_sum,
    info.months_with_retirement_payments,
    info.mrot_annual_incl_tax,
    info.salary_exceeds_mrot,
    info.client_percentile,
    info.client_rank,
    cl.sd_gender_cd AS gender,
    Cast(cl.sd_age_yrs_comp_nv AS SMaLLINT) AS age_years,
    ( CASE WHEN cl.lbt_social_client_nflag = 0 THEN NULL ELSE cl.lbt_social_client_nflag END ) AS retirement_flag,
    ( CASE WHEN cl.lbt_acct_dep_ca_bal_rub_amt = 0 THEN NULL ELSE cl.lbt_acct_dep_ca_bal_rub_amt END ) AS checking_accounts_balance,
    ( CASE WHEN cl.lbt_acct_dep_td_bal_rub_amt = 0 THEN NULL ELSE cl.lbt_acct_dep_td_bal_rub_amt END ) AS saving_accounts_balance,
    ( CASE WHEN cl.lbt_acct_ma_bal_rub_amt = 0 THEN NULL ELSE cl.lbt_acct_ma_bal_rub_amt END ) AS metal_accounts_balance,
    ( CASE WHEN cl.lbt_sav_cert_bal_rub_amt = 0 THEN NULL ELSE cl.lbt_sav_cert_bal_rub_amt END ) AS saving_certificates_balance,
    ( CASE WHEN cl.lbt_acct_dc_bal_rub_amt = 0 THEN NULL ELSE cl.lbt_acct_dc_bal_rub_amt END ) AS debet_cards_balance,
    ( CASE WHEN cl.crd_cc_own_bal_rub_amt = 0 THEN NULL ELSE cl.crd_cc_own_bal_rub_amt END) AS credit_cards_own_money_balance,
    ( CASE WHEN cl.crd_cc_tot_credit_rub_amt = 0 THEN NULL ELSE cl.crd_cc_tot_credit_rub_amt END) AS credit_cards_due_balance,
    ( CASE WHEN cl.cred_pl_os_rub_amt = 0 THEN NULL ELSE cl.cred_pl_os_rub_amt END ) AS personal_credits_left,
    ( CASE WHEN cl.cred_pl_mg_rub_amt = 0 THEN NULL ELSE cl.cred_mg_os_rub_amt END ) AS mortgage_left,
    ( CASE WHEN cl.lne_pl_open_wavg = 0 THEN NULL ELSE cl.lne_pl_open_wavg END ) AS personal_credits_interest,
    ( CASE WHEN cl.lne_mlg_open_wavg_intr_rate = 0 THEN NULL ELSE  cl.lne_mlg_open_wavg_intr_rate END ) AS mortgage_interest,
    ( CASE WHEN cl.lne_tot_debt_due_rub_amt = 0 THEN NULL ELSE  cl.lne_tot_debt_due_rub_amt END ) AS all_credits_left_due_part,
    ( CASE WHEN cl.lne_tot_debt_ovrd_rub_amt = 0 THEN NULL ELSE  cl.lne_tot_debt_ovrd_rub_amt END ) AS all_credits_left_overdue_part,
    ( CASE WHEN cl.lne_tot_debt_int_ovrd_rub_amt = 0 THEN NULL ELSE  cl.lne_tot_debt_int_ovrd_rub_amt END ) AS all_credits_left_overdue_percents_part,
    ( CASE WHEN cl.crd_otf_loan_rub_amt = 0 THEN NULL ELSE  cl.crd_otf_loan_rub_amt END ) AS credit_payments,
    ( CASE WHEN cl.prd_cc_active_nflag - cl.prd_cc_active_prev_nflag = 0 THEN NULL ELSE cl.prd_cc_active_nflag - cl.prd_cc_active_prev_nflag END ) AS credit_cards_opened_flag,
    ( CASE WHEN cl.prd_da_active_nflag - cl.prd_da_active_prev_nflag = 0 THEN NULL ELSE cl.prd_da_active_nflag - cl.prd_da_active_prev_nflag END ) AS deposits_opened_flag,
    ( CASE WHEN cl.prd_pl_active_nflag - cl.prd_pl_active_prev_nflag = 0 THEN NULL ELSE cl.prd_pl_active_nflag - cl.prd_pl_active_prev_nflag END ) AS personal_loans_opened_flag,
    ( CASE WHEN cl.prd_mg_active_nflag - cl.prd_mg_active_prev_nflag = 0 THEN NULL ELSE cl.prd_mg_active_nflag - cl.prd_mg_active_prev_nflag END ) AS mortgages_opened_flag,
    ( CASE WHEN cl.crd_otf_pos_spend_rub_amt = 0 THEN NULL ELSE cl.crd_otf_pos_spend_rub_amt END ) AS pos_spent_total,
    cl.mdm_dwh_pty_id AS mdm_id
  FROM SBX_Retail_DATA.ft_clnt_aggr_mnth AS cl
  LEFT JOIN SBX_DB_SME_DKK_ANALYSE.BM_clients_with_region_city_and_income AS info ON cl.client_dk = info.client_dk
  AND cl.client_dk = info.client_dk AND cl.report_dt = info.report_dt
  WHERE cl.lbt_payroll_client_nflag=1 AND cl.ext_dead_nflag = 0
  AND cl.report_dt >= '2017-04-01' AND cl.report_dt < '2017-07-01'
)
WITH DATA PRIMARY INDEX (client_dk, report_dt) ON COMMIT PRESERVE ROWS;

-- [DELETED]
--  DELETE FROM SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics_by_month
--  WHERE report_dt <= '2019-12-31';

INSERT INTO SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics_by_month SELECT * FROM BM_clients_statistics;

SELECT report_dt, Count(1) AS count_lines
FROM SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics_by_month
GROUP BY report_dt ORDER BY report_dt;
