# Analyzing Financial Burden of Chronic Disease in California Healthcare

## Project Overview

Chronic diseases represent a major driver of healthcare spending in the United States. However, the financial burden placed on patients varies widely depending on insurance coverage and the type of condition.

This project analyzes California healthcare payments data to examine how out-of-pocket costs differ across chronic disease categories and payer types, helping identify where financial inequities occur.

---

## Tools & Skills
- **SQL (MySQL / PostgreSQL):** Data cleaning, aggregation, and KPI computation.  
- **Power BI:** Data visualization and storytelling.  
 Comparing populations and assessing equity through KPIs.

---

## Objectives
- Measure how OOP costs differ between chronic and non-chronic patients.
- Identify counties with the **highest financial burden** and **widest cost gaps**.
- Find out how patients typically pay per encounter (calculate condition burden ratio).
- Provide **data-driven recommendations** for policy and cost-relief strategies.

## Key Findings and Insights
---
**Cost Disparity**
Members with chronic conditions face a dramatically higher financial burden statewide. In 2022, chronic members paid a weighted median of $43 out-of-pocket compared to just $0.25 for non-chronic members — a difference of more than 17,000%. Overall, members with one or more chronic conditions incur 86% higher median OOP costs than their non-chronic counterparts, with a combined statewide median of $35,140 across both groups.

**Geographic Variation**
OOP costs for chronic conditions vary sharply across California counties, ranging from a median of $5 in Madera County to $435 in Mono County — a $430 gap that underscores how financial burden depends heavily on where a patient lives. Patients in Alpine County pay 221% above the state average, while Mono County ranks highest in total median OOP costs across all members at $1,940. Madera County ranks lowest at $20.

**Utilization & Encounter Costs**
Healthcare utilization is substantially higher among chronic members. In 2022, the median chronic member filed 14 claims annually compared to just 4 for non-chronic members — a 250% increase. This higher frequency directly compounds OOP spending: chronic patients pay approximately $21.60 per claim versus $13.00 for non-chronic patients, meaning the burden accumulates both in visit volume and cost per encounter.

**High-Cost Conditions**
Cardiovascular conditions carry the highest patient costs statewide. The most prevalent high-severity diagnoses include:

<img width="298" height="84" alt="Key Findings (Patient Count by Cardio Condition)" src="https://github.com/user-attachments/assets/396740db-d66a-453a-b115-fa69a1cc2a5c" />


By contrast, mental health conditions such as Depression (12,083 patients) and Anxiety (11,043 patients) show the lowest OOP costs, likely because treatment relies more heavily on outpatient therapy and medication rather than high-cost acute interventions.

**Chronic Prevalence by County**
Nearly half — approximately 47% — of insured California members had at least one chronic condition in 2022. The five counties with the highest chronic prevalence are:

<img width="294" height="124" alt="Key Findings (Chronic Prev by County)" src="https://github.com/user-attachments/assets/ef7622ab-67fa-4b7e-9480-8ed447ec8489" />


---

## Power BI Visuals

Average Cost Inequality by County
<img width="1121" height="562" alt="image" src="https://github.com/user-attachments/assets/ed822b72-7d54-4888-aae1-05682d087057" />

Average Patient Out-of-Pocket Costs by County
<img width="1242" height="730" alt="image" src="https://github.com/user-attachments/assets/a491e43c-4ad9-4100-baca-89029eb7ed88" />


## Business Context
High OOP costs can limit access to essential care and worsen health inequities.  
This analysis helps:
- **Policy makers** design targeted affordability programs.  
- **Healthcare systems** understand where chronic care management can improve.  
- **Insurers** evaluate fairness and affordability across patient groups.

---

## Key Performance Indicators (KPIs)

| KPI | Description | Purpose |
|------|--------------|----------|
| **Median Out-of-Pocket Cost per Member** | Typical cost per patient per county. | Identifies areas with the highest financial pressure. |
| **Weighted Median Out of Pocket Cost** | Weighted Out-of-Pocket Cost by Chronic Subgroup | Identifies median cost for chronic v non chronic members |
| **Chronic Prevalence** | The percent of members in a population who have one chronic condition | Measures long-term health burdens across regions |
| **Cost Inequality Index** | Difference between the 75th and 25th percentile OOP costs. | Measures cost spread and affordability gaps. |
| **Median Claim Count** | Median number of healthcare claims per member. | Reflects healthcare utilization and access. |
| **Chronic Cost Premium** | Ratio of OOP costs for chronic vs. non-chronic populations. | Quantifies how much more chronic care patients pay. |
| **Condition Burden Ratio** | Ratio of median out-of-pocket cost per member vs. claim count per member. | Quantifies how patients generally pay per encounter. |
| **Relative Out-of-Pocket Comparison between Groups** | Percent difference in out-of-pocket costs between groups. | Quantifies how much more chronic patients pay in out-of-pocket costs vs. no chronic | (maybe)
| **Top 5 Costly Chronic Conditions** | Conditions with the highest average OOP costs and patient counts. | Pinpoints high-cost, high-impact conditions. |

---

## Data Source
**Dataset:** [California CHHS – HPD Medical Out-of-Pocket Costs and Chronic Conditions (2022)](https://data.chhs.ca.gov/dataset/healthcare-payments-data-hpd-medical-out-of-pocket-costs-and-chronic-conditions/resource/e7794d13-4134-4230-b2d5-8698d438fd34)  
**File Used:** `hpd_oop_chronic_2022_masked.xlsx`  
**Columns:** County, Product Type, Chronic Flag, Chronic Condition, Median OOP Cost, 25th/75th Percentile OOP, Median Claim Count, etc.

---

## Analysis Process

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
   - Created a condition-burden ratio (showcasing out-of-pocket costs vs. claims).
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
     - Table of Top 5 costly chronic conditions

---

## Key Insights
- Chronic care patients pay **2–3× higher** median OOP costs than non-chronic patients.  
- Certain Northern California counties show both **higher median costs** and **greater inequality**, signaling affordability issues.  
- **Diabetes, heart disease, and kidney disorders** are among the costliest chronic conditions statewide.  

---

## More about the Chronic Prevalence KPI

After calculating the annual member count for each chronic subgroup, I then calculated **Chronic Prevalence** by using the respective member counts inside the formula below that derives the population share of members statewide who have a chronic condition.

<img width="457" height="80" alt="image" src="https://github.com/user-attachments/assets/d7e43e2f-bf07-4ed1-8d07-715fd238732c" />

In 2022, approximately **47%** of insured members statewide had at least one chronic condition, indicating that nearly half of the covered population requires ongoing medical management. 

## More about the Weighted Median Out-Of-Pocket Costs Query by Chronic Subgroup

![Weighted median oop cost 1 (SQL Query)](https://github.com/user-attachments/assets/605b0c41-e5e2-476a-bbf1-9a0937d77a84)


In 2022, members with chronic conditions paid a weighted median of **$43** out-of-pocket compared to just **$0.25** for non-chronic members.


## About the “Chronic Cost Premium” Query
To calculate how much more chronic care patients pay than non-chronic patients:
- Two temporary tables (using CTEs) were created -- one filtered for chronic patients and another for non-chronic.  
- Each summarized average median OOP cost by county.  
- Both results were joined on the county name, and a new column calculated the ratio of chronic to non-chronic averages.  
- This ratio became the **Chronic Cost Premium**, a KPI expressing how much higher the OOP cost is for chronic patients.

![Chronic Cost Premium (SQL Query)](https://github.com/user-attachments/assets/47642fdc-0310-4ab7-bba3-8d36128e7400)


## About the “Condition Burden Ratio” 
This KPI informs how much higher out-of-pocket costs are for chronic patients relative to non-chronic patients (creating a percent difference). 

![Condition Burden Ratio (SQL Query)](https://github.com/user-attachments/assets/cff6888a-3131-444c-a4d8-2d8d226686d4)


---

## So What? Strategic recommendations going forward:

**1. Launch Targeted Financial Assistance Programs in High-Burden Counties**
Mono County ($435 median chronic OOP) and Alpine County (221% above the state average) represent acute affordability crises that statewide policies alone won't resolve. Policymakers should establish county-specific cost-relief programs — such as OOP cost caps, subsidized co-pay assistance, or expanded Medi-Cal eligibility thresholds — prioritized by the Cost Inequality Index and Chronic Cost Premium KPIs identified in this analysis. Geographic targeting ensures limited resources reach the populations facing the steepest financial walls.

**2. Redesign Chronic Care Coverage to Reduce Per-Claim Costs**
Chronic members file a median of 14 claims annually versus 4 for non-chronic members — a 250% difference in utilization that directly compounds OOP spending. At ~$21.60 per chronic claim versus ~$13.00 for non-chronic claims, the disparity is not only in volume but in cost per encounter. Insurers should explore reducing per-visit cost-sharing for high-frequency chronic conditions (particularly cardiovascular-related conditions like AMI, Atrial Fibrillation, and Stroke) to prevent members from deferring necessary care due to accumulated costs.

**3. Prioritize Prevention for High-Prevalence Rural Counties**
The top five counties by chronic prevalence — Tuolumne (64%), Calaveras (61%), Sierra (60%), Mariposa (60%), and Plumas (59%) — are predominantly rural, suggesting structural gaps in preventative care access. Healthcare systems and state agencies should direct community health worker programs, mobile health clinics, and chronic disease screening initiatives to these regions. Reducing chronic disease onset in these populations is the most cost-effective long-term lever for lowering statewide OOP burden.

**4. Expand and Protect Mental Health Coverage**
Depression and Anxiety show the lowest OOP costs among chronic conditions, likely because treatment is concentrated in lower-cost outpatient and medication channels. However, this affordability advantage is fragile — any erosion in mental health parity or outpatient coverage could push patients toward more expensive, acute interventions. Protecting and expanding outpatient mental health benefits serves as both a cost-containment and equity measure.

**5. Establish Ongoing County-Level Equity Monitoring**
The $430 spread in median chronic OOP costs across California counties (Madera at $5 vs. Mono at $435) illustrates that zip code is a meaningful predictor of financial burden. Policymakers and insurers should adopt the Cost Inequality Index and Chronic Cost Premium as standing dashboard KPIs — refreshed annually using CHHS data — to track whether interventions are narrowing or widening geographic disparities over time.

---

## Repository Contents
- `hpd_oop_chronic_2022_masked.xlsx` – Raw dataset (California CHHS).  
- `hpd_chronic_analysis.sql` – SQL script with KPI queries.  
- `hdp_masked_2022 (viz)(1).pbix` – Power BI dashboard.  
- `README.md` – Project documentation (this file).

---
