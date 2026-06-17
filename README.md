# Supply Chain Performance & Risk Optimization

> **Quantifying margin leaks and operational vulnerabilities for a scaling D2C brand. Features a complete data pipeline spanning programmatic preprocessing (Python), relational database engineering (MySQL), and a custom Figma-to-Power BI executive cockpit.**

---

## 📌 Project Overview
This project provides an end-to-end operational analysis of a rising Fashion and Beauty startup handling hair care, skin care, and cosmetic products. The objective was to build a data pipeline that uncovers logistical friction points, audits carrier cost efficiencies, and exposes vulnerabilities within the manufacturing and supplier network.

---

## 🛠️ Data Architecture Pipeline
1. **Data Cleaning & EDA:** Python (`Pandas`, `NumPy`) in Jupyter Notebooks.
2. **Database Engineering & Schema Design:** MySQL Workbench.
3. **Data Visualization & Business Intelligence:** Power BI (Custom UI layout designed in Figma).

---

## 📸 Executive Dashboard
![Supply Chain Optimization Dashboard](image.png)

---

## ⚙️ Technical Pipeline Implementation

### 1. Exploratory Data Analysis & Data Wrangling (Python)
Before moving the raw data into a database system, I conducted data profiling and cleaning to ensure absolute data integrity:
* **Profiling & Integrity:** Used `.info()`, `.describe()`, `.isnull().sum()`, and `.duplicated().sum()` to audit the dataset for missing entries or structural redundancies.
* **Feature Inspection:** Isolated operational metrics by checking mean lead times and cost variations across carriers before exporting the verified dataset as `cleaned_supply_chain_dataset.csv`.

### 2. Database Design & Infrastructure (SQL)
* **Schema Enforcement:** Wrote DDL scripts to generate `supply_chain_db` and defined explicit table properties using optimal data types (`VARCHAR`, `INT`, and precise financial `DECIMAL` attributes).
* **Analytical Queries:** Developed optimized DML scripts leveraging aggregations (`SUM`, `AVG`), grouping operations (`GROUP BY`), and logical filtering (`WHERE Stock_levels < 20`) to track inventory risk boundaries, product line revenues, and carrier transit metrics.

### 3. Executive Business Intelligence (Power BI)
The engineered database was connected to Power BI to construct an executive-level dashboard. The visual UI layout was pre-planned and structured within **Figma** to establish a clean grid system before importing data visuals.

---

## 💡 Core Operational Insights

### 💰 The Financial Reality Check & Logistics Freedom
Our high-level financials look exceptionally healthy. The brand brought in **$578K in total revenue** and retained a powerful **$524K in total profit**. Looking directly at our primary direct shipping fees, they sit at a remarkably lean baseline total of **$554.82**. Keeping direct carrier expenses this low indicates that our top-line margins are completely safe from fulfillment leakage. This exceptional cost containment gives the startup the capital freedom to shift toward faster, premium logistics pipelines without sacrificing overall brand profitability.

### 🚚 Logistics & Route Efficiency
The dashboard analysis of shipping routes and transportation modes indicates a heavy reliance on cost-effective but slow shipping methods. By visualizing transit times by route, I identified that certain sea lanes are causing delivery bottlenecks. While these routes keep our direct shipping costs minimized, they are negatively impacting our Average Lead Time against our benchmark of **15.96 days**. We are protecting our wallet on shipping fees, but we are paying for it with customer wait times.

### ⚠️ Manufacturing & Quality Risk
* **Production Volume Mismatch:** Cross-referencing production volume with product defect rates revealed that our highest manufacturing output (**24K units**) is concentrated in the Hair Care (2.5% defect) and Skin Care (2.3% defect) segments, which are our most defect-prone categories. We are actively mass-producing our most flawed inventory, causing cost wastage.
* **Cosmetics Stability:** Our core Cosmetics line is our most structurally sound category, maintaining the lowest error rate at 1.9%.

### 📉 The "Zero Perfect Suppliers" Problem
Mapping suppliers by defect rate vs. lead time revealed the absolute absence of any supplier in the bottom-left "Target Zone" (Fast delivery and low defects). Instead, our suppliers fall into three distinct risk categories:
* **The Critical Risks (Supplier 2 & Supplier 4):** These two sit directly in our worst-performing quadrant: *Slow & High Defects*. They lag far behind our 15.96-day network average and simultaneously push out high defect volumes.
* **The Speed Traps (Supplier 3 & Supplier 5):** These are our fastest options, dropping lead times down to 14–15 days, well below the network average. However, they cut corners to hit deadlines, pushing defect rates to a dangerous 3%.
* **The Quality Lag (Supplier 1):** Sitting at the bottom right, they offer pristine quality but operate at an absolute crawl, taking a staggering 17 days to ship—severely bottlenecking our supply chain timeline.

---

## 🎯 Final Business Recommendations
1. **Optimize Carrier Modes:** Leverage our exceptionally high profit margins to shift our high-volume Hair and Skin care lines off slower transit routes and scale up faster freight agreements to protect customer retention.
2. **Eliminate or Restructure Critical Suppliers:** Immediately audit Supplier 2 and Supplier 4. Because they are both slow and volatile, we should look for alternative manufacturing partners to replace them entirely if they cannot meet baseline standards.
3. **Address the Manufacturing Speed/Quality Trade-off:** Hold Suppliers 3 and 5 accountable to tighten their quality controls to drop that 3% defect rate. Simultaneously, collaborate with Supplier 1 to help them reduce their 17-day manufacturing delay and pull it closer to our 15.96-day average.

---

