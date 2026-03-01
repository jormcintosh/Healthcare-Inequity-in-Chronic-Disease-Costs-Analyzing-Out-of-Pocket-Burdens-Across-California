SELECT*
FROM hpd_oop_chronic_2022_masked;

SET SQL_SAFE_UPDATES = 0;
LIMIT 5;

-- Remove all county totals from dataset --
DELETE from hpd_oop_chronic_2022_masked
WHERE county = 'All' 

-- verify med_opp_member column for missing values --
SELECT *
FROM hpd_oop_chronic_2022_masked
WHERE med_oop_member IS NULL;

-- Calculate total annual member count --

SELECT SUM(count)
FROM hpd_oop_chronic_2022_masked
WHERE chronic_flag = 'All';

Result = 	539982344

-- calculate total annual member count by chronic flag subgroup --

SELECT SUM(count), chronic_flag
FROM hpd_oop_chronic_2022_masked
GROUP BY chronic_flag;

Result:
  
  '257037762', 'With chronic condition'
  '267062160', 'No chronic condition'

  --calculate median out of pocket cost for chronic flag subgroup
**check this**
SELECT SUM(med_oop_member), chronic_flag
FROM hpd_oop_chronic_2022_masked
GROUP BY chronic_flag

  Result: 
399,326	With chronic condition
 66,959	No chronic condition

-- calculate median oop cost by county and denote alias --
SELECT county, ROUND(avg(med_oop_member), 2) AS median_oop_cost
FROM hpd_oop_chronic_2022_masked
GROUP BY county
ORDER BY median_oop_cost DESC;

-- determine Cost Inequality Index by county --

SELECT county, ROUND (avg(p75th_oop_member - p25th_oop_member), 2) AS cost_inequality_index
FROM hpd_oop_chronic_2022_masked
GROUP BY county
ORDER BY cost_inequality_index DESC;


-- determine Chronic v Non-Chronoic costs --
SELECT chronic_flag, 
ROUND(avg(med_oop_member), 2) AS median_oop_cost,
ROUND (avg(med_claim_ct), 2) AS median_claim_count
FROM hpd_oop_chronic_2022_masked
GROUP BY chronic_flag;

-- determine Avg Cost premium by county --
WITH chronic_costs AS (
  SELECT county, AVG(med_oop_member) AS chronic_avg
  FROM hpd_chronic_2022
  WHERE chronic_flag = 'With chronic condition'
  GROUP BY county
),
nonchronic_costs AS (
  SELECT county, AVG(med_oop_member) AS nonchronic_avg
  FROM hpd_chronic_2022
  WHERE chronic_flag = 'No chronic condition'
  GROUP BY county
)
SELECT 
  c.county,
  ROUND(c.chronic_avg / n.nonchronic_avg, 2) AS chronic_cost_premium
FROM chronic_costs c
JOIN nonchronic_costs n ON c.county = n.county
ORDER BY chronic_cost_premium DESC;

-- determine Top 5 Most Costly Chronic Conditions --

SELECT 
  chronic_condition,
  ROUND(AVG(med_oop_member), 2) AS avg_oop_cost,
  SUM(count) AS total_patients
FROM hpd_chronic_2022
WHERE chronic_flag = 'With chronic condition'
GROUP BY chronic_condition
ORDER BY avg_oop_cost DESC
LIMIT 5;







