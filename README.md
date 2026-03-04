# Healthcare Inequity in Chronic Disease Costs: Analyzing Out-of-Pocket Burdens Across California

## 📘 Project Overview

Chronic disease patients in California face significantly different out-of-pocket (OOP) costs depending on region and income level.
This project analyzes statewide healthcare payment data using SQL to identify cost disparities, quantify financial burden, and surface opportunities for policy or pricing intervention.

---

## 🎯 Objectives
- Measure how OOP costs differ between chronic and non-chronic patients.
- Identify counties with the **highest financial burden** and **widest cost gaps**.
- Find out how patients typically pay per encounter (utilized condition burden ratio).
- Provide **data-driven recommendations** for policy and cost-relief strategies.

## Main Insights
Insight 1: Chronic Cost Disparity (Statewide 2022)

-Chronic members pay **$43 dollars ** weighted median out of pocket cost
-Non-chronic members pay **25 cents** in weighted median out of pocket costs
-Chronic memebrs pay **17,100** percent more in weighted median out-of-pocket compared to the non-chronic members

Insight 2: County Variation

The highest chronic out-of-pocket county in the state of California is Mono ($435 median out of pocket cost). 
Respectively, the lowest chronic out-of-pocket county is Madera with ($5 median out-pocket-cost). There is a $430 cost gap on average.

Insight 3: Utilization Impact

Members with chronic conditions demonstrate significantly higher healthcare utilization. In 2022, the median chronic member filed **14** claims annually compared to **4** for non-chronic members -- a **250%** increase. This elevated utilization likely contributes to the observed disparity in out-of-pocket financial burden.

  
## Key Findings
- Patients in Alpine, CA pay 221% higher out-of-pocket costs relative to the state average.
- 
- Members with one or more chronic conditions incur 86% higher median out-of-pocket-cost compared to members without chronic conditions.
- The approxomite median out of pocket costs per claim for patients with a chronic condition = $21.60
- The approxomite median out of pocket costs per claim for patients without a chronic condition = $13.00
---

## Power BI Visuals

Average Cost Inequality by County
<img width="1121" height="562" alt="image" src="https://github.com/user-attachments/assets/ed822b72-7d54-4888-aae1-05682d087057" />

Average Patient Out of Pocket Costs by County
<img width="1242" height="730" alt="image" src="https://github.com/user-attachments/assets/a491e43c-4ad9-4100-baca-89029eb7ed88" />


## 💡 Business Context
High OOP costs can limit access to essential care and worsen health inequities.  
This analysis helps:
- **Policy makers** design targeted affordability programs.  
- **Healthcare systems** understand where chronic care management can improve.  
- **Insurers** evaluate fairness and affordability across patient groups.

---

## 📊 Key Performance Indicators (KPIs)

| KPI | Description | Purpose |
|------|--------------|----------|
| **Median Out-of-Pocket Cost per Member** | Typical cost per patient per county. | Identifies areas with the highest financial pressure. |
| **Weighted Median Out of Pocket Cost** | Weighted out of pocket cost bychronic subgroup |
| **Chronic Prevalence** | The percent of members in a population who have one chronic condition | Measures financial strain |
| **Cost Inequality Index** | Difference between the 75th and 25th percentile OOP costs. | Measures cost spread and affordability gaps. |
| **Median Claim Count** | Median number of healthcare claims per member. | Reflects healthcare utilization and access. |
| **Chronic Cost Premium** | Ratio of OOP costs for chronic vs. non-chronic populations. | Quantifies how much more chronic care patients pay. |
| **Condition Burden Ratio** | Ratio of median out of pocket cost per member vs. claim count per member. | Quantifies how patients generally pay per encounter. |
| **Relative Out-of-Pocket Comparison between Groups** | Percent difference in out-of-pocket costs between groups. | Quantifies how much more chronic patients pay in out of pocket costs vs. no chronic | (maybe)
| **Top 5 Costly Chronic Conditions** | Conditions with the highest average OOP costs and patient counts. | Pinpoints high-cost, high-impact conditions. |

---

## 🧠 Data Source
**Dataset:** [California CHHS – HPD Medical Out-of-Pocket Costs and Chronic Conditions (2022)](https://data.chhs.ca.gov/dataset/healthcare-payments-data-hpd-medical-out-of-pocket-costs-and-chronic-conditions/resource/e7794d13-4134-4230-b2d5-8698d438fd34)  
**File Used:** `hpd_oop_chronic_2022_masked.xlsx`  
**Columns:** County, Product Type, Chronic Flag, Chronic Condition, Median OOP Cost, 25th/75th Percentile OOP, Median Claim Count, etc.

---

## 🧮 Tools & Skills
- **SQL (MySQL / PostgreSQL):** Data cleaning, aggregation, and KPI computation.  
- **Power BI:** Data visualization and storytelling.  
- **Data Storytelling:** Translating metrics into insights for decision-making.  
- **Analytical Thinking:** Comparing populations and assessing equity through KPIs.

---

## 📈 Analysis Process

1. **Data Preparation**  
   - Imported dataset into SQL and verified data quality.  
   - Removed statewide totals and null values for accurate county-level analysis.  

2. **Descriptive Analysis**  
   - Calculated median out-of-pocket costs by county and chronic condition.  
   - Measured distribution using percentile data to show cost variation.  

3. **Chronic vs Non-Chronic Comparison**  
   - Filtered patient populations using the chronic flag.  
   - Calculated average OOP costs for each group.  
   - Designed a KPI: **Chronic Cost Premium** — showing how many times more chronic patients pay.  

4. **Inequity Measurement**  
   - Computed **Cost Inequality Index** (difference between 75th and 25th percentile OOP costs).  
   - Ranked counties with the highest inequality levels.
   - Created a condition-burden ratio (showcasing out of pocket costs vs. claims).
   - Computed weighted statewide comparison by chronic condition.

5. **Condition-Level Insights**  
   - Identified top 5 chronic conditions by average OOP cost and total patient count.  
   - Combined `AVG` (to measure cost) with `SUM` (to measure number of patients).  

6. **Visualization & Reporting**  
   - Created a BI dashboard showing:
     - County-level OOP costs (map)
     - Cost inequality index (bar chart)
     - Chronic vs non-chronic comparison (side-by-side bars)
     - KPI cards for statewide averages
     - Table of top 5 costly chronic conditions

---

## 💬 Key Insights
- Chronic care patients pay **2–3× higher** median OOP costs than non-chronic patients.  
- Certain Northern California counties show both **higher median costs** and **greater inequality**, signaling affordability issues.  
- **Diabetes, heart disease, and kidney disorders** are among the costliest chronic conditions statewide.  

---

## 🧾 Recommendations
- Prioritize financial support or subsidy programs in high-burden counties.  
- Encourage insurers to reassess coverage for chronic care services.  
- Expand preventative health programs to reduce long-term OOP spending.  

---

## About the Weighted Median Out-Of-Pocket Costs Query

## 🧩 About the “Chronic Cost Premium” Query
To calculate how much more chronic care patients pay than non-chronic patients:
- Two temporary tables (using CTEs) were created -- one filtered for chronic patients and another for non-chronic.  
- Each summarized average median OOP cost by county.  
- Both results were joined on the county name, and a new column calculated the ratio of chronic to non-chronic averages.  
- This ratio became the **Chronic Cost Premium**, a KPI expressing how much higher the OOP cost is for chronic patients.

![Chronic Cost Premium (SQL Query)](https://github.com/user-attachments/assets/47642fdc-0310-4ab7-bba3-8d36128e7400)




## 🧩 About the “Condition Burden Ratio” 
This KPI informs how much higher out of pocket are for chronic patients relative to non-chronic patients (creating a percent difference). 

![Condition Burden Ratio (SQL Query)](https://github.com/user-attachments/assets/cff6888a-3131-444c-a4d8-2d8d226686d4)


---

## Repository Contents
- `hpd_oop_chronic_2022_masked.xlsx` – Raw dataset (California CHHS).  
- `hpd_chronic_analysis.sql` – SQL script with KPI queries.  
- `hdp_masked_2022 (viz)(1).pbix` – Power BI dashboard.  
- `README.md` – Project documentation (this file).

---
