-- 1. ПРОВЕРКА ЧТО В SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics ЗАГРУЗИЛИСЬ ДАННЫЕ
-- ${LAST_DAY_PREV_MONTH} - ПОСЛЕДНИЙ ДЕНЬ ПРЕДЫДУЩЕГО МЕСЯЦА
SELECT * FROM
  (
  SELECT report_dt, count(*) AS count_lines
  FROM SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics
  GROUP BY report_dt ORDER BY report_dt;
  )
  WHERE report_dt = ${LAST_DAY_PREV_MONTH} AND count_lines > 0

-- 2. ПРОВЕРКА ЧТО В SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics ЗАГРУЗИЛИСЬ ДАННЫЕ > 20 МЛН
-- ${LAST_DAY_PREV_MONTH} - ПОСЛЕДНИЙ ДЕНЬ ПРЕДЫДУЩЕГО МЕСЯЦА
SELECT * FROM
  (
  SELECT report_dt, COUNT(*) AS count_lines
  FROM SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics
  GROUP BY report_dt ORDER BY report_dt;
  )
  WHERE report_dt = ${LAST_DAY_PREV_MONTH} AND count_lines > 20000000

-- 3. [OPTIONAL] ПРОВЕРЯЕМ ЧТО CLIENT_DK, REGION, SALARY_SUM ЗАПОЛНЕНЫ >= 99 %
SELECT * FROM (
  SELECT cnt_client_dk / count_lines * 100 as prc_client,
  cnt_region / count_lines * 100 as prc_region,
  cnt_salary_sum / count_lines * 100 as prc_salary
  FROM (
  SELECT count(*) count_lines,
  sum(case when client_dk is not null then 1 else 0 end) cnt_client_dk,
  sum(case when region is not null then 1 else 0 end) cnt_region,
  sum(case when salary_sum is not null then 1 else 0 end) cnt_salary_sum
  FROM SBX_DB_SME_DKK_ANALYSE.BM_clients_statistics
  WHERE report_dt = ${LAST_DAY_PREV_MONTH}
  )
) t WHERE prc_client < 99 OR prc_region < 99 OR prc_salary
