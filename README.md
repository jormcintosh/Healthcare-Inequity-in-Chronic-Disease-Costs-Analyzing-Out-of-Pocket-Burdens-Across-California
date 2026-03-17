# Analyzing Financial Burden of Chronic Disease in California Healthcare

## 📘 Project Overview

Chronic diseases represent a major driver of healthcare spending in the United States. However, the financial burden placed on patients varies widely depending on insurance coverage and the type of condition.

This project analyzes California healthcare payments data to examine how out-of-pocket costs differ across chronic disease categories and payer types, helping identify where financial inequities occur.

---

## 🎯 Objectives
- Measure how OOP costs differ between chronic and non-chronic patients.
- Identify counties with the **highest financial burden** and **widest cost gaps**.
- Find out how patients typically pay per encounter (calculated condition burden ratio).
- Provide **data-driven recommendations** for policy and cost-relief strategies.

## Main Insights

Insight 1: Chronic Cost Disparity (Statewide 2022)

Chronic disease is associated with a dramatically higher financial burden: members with chronic conditions pay a weighted median of **$43** out-of-pocket compared to just **$0.25** for non-chronic members—more than 17,000% higher; underscoring the significant cost disparity between these populations.

- Patients with chronic diseases face substantially higher out-of-pocket costs compared to those without chronic conditions.

Insight 2: County Variation

Out-of-pocket costs for chronic conditions differ sharply across California counties, ranging from a median of **$5** in Madera County to **$435** in Mono County -- a **$430** disparity that underscores how the financial burden of chronic disease can depend heavily on where a patient lives.

Insight 3: Utilization Impact

Healthcare utilization is substantially higher among members with chronic conditions: in 2022, the median chronic member filed **14** claims annually compared to just **4** for non-chronic members--a 250% increase--suggesting that more frequent healthcare interactions are a key driver of the higher out-of-pocket costs observed among this population
  
## Key Findings

- High-severity conditions such as cardiovascular events (i.e Acute Myocardial [279,614],Infarction Atrial Fibrillation [235,552], Stroke [122,814]) show **disproportionately high patient costs**
- Mental health conditions (i.e. Depression [12,083] and Anxiety [11,043] show the **low patient costs**. Treatments may rely more heavily on outpatient therapy and medication.

- Patients in Alpine, CA pay 221% higher out-of-pocket costs relative to the state average.
- Chronic and non-chronic members paid a combined total of $35,140 in statewide Median out-of-pocket costs.
- **Mono County** ranked the highest in total median out-of-pocket costs across members totaling $1,940.
- **Madera County** ranked the lowest in total median out-of-pocket costs across members totaling $20.

- Members with one or more chronic conditions incur 86% higher median out-of-pocket costs compared to members without chronic conditions.

- The approximate median out-of-pocket costs per claim for patients with a chronic condition = $21.60
- The approximate median out-of-pocket costs per claim for patients without a chronic condition = $13.00
- The Top 5 counties with the Highest Chronic Prevalence include: Tuolumne (64%), Calaveras (61%), Sierra (60%), Mariposa (60%), Plumas (59%). 

  
---

## Power BI Visuals

Average Cost Inequality by County
<img width="1121" height="562" alt="image" src="https://github.com/user-attachments/assets/ed822b72-7d54-4888-aae1-05682d087057" />

Average Patient Out-of-Pocket Costs by County
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
| **Weighted Median Out of Pocket Cost** | Weighted out of pocket cost by chronic subgroup | Identifies median cost for chronic v non chronic memebers |
| **Chronic Prevalence** | The percent of members in a population who have one chronic condition | Measures long-term health burdens across regions |
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
 Comparing populations and assessing equity through KPIs.
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

## 🧾 So What? My recommendations going forward:
- Prioritize financial support or subsidy programs in high-burden counties.  
- Encourage insurers to reassess coverage for chronic care services.  
- Expand preventative health programs to reduce long-term OOP spending.  

---

## More about the Chronic Prevalence KPI

After calculating the annual member count for each chronic subgroup, I then calculated **Chronic Prevalence** by using the respective member counts inside the formula below that derives the population share of members statewide who have a chronic condition.

<img width="457" height="80" alt="image" src="https://github.com/user-attachments/assets/d7e43e2f-bf07-4ed1-8d07-715fd238732c" />

In 2022, approximately **47%** of insured members statewide had at least one chronic condition, indicating that nearly half of the covered population requires ongoing medical management. 

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
