---

# SaaS Revenue & Performance Analysis for B2B Business

## Overview

This project analyzes a SaaS sales dataset to understand revenue and performance patterns across products, customers, and segments.
The focus is on identifying where profits are generated, where losses occur, and examining factors associated with reduced profitability.

---

## Objectives

* Evaluate overall business performance
* Analyze profitability across products
* Identify loss-making customers
* Compare performance across customer segments
* Examine the relationship between discount and profit

---

## Dataset Description

The dataset consists of transactional sales records with the following key attributes:

* Order details (Order ID, Order Date)
* Customer information (Customer, Segment, Industry)
* Product information (Product, License)
* Financial metrics (Sales, Profit, Discount, Profit Margin)
* Geographic details (Country, Region, Subregion)

---

## Tools Used

* **SQL (MySQL)** → Core data analysis and aggregations
* **Python (Pandas)** → Supporting calculations and validation
* **Power BI** → Dashboard and visualization

---

## Key Analysis

### 1. Overall Performance

* Total Sales: ~2.3M
* Total Profit: ~286K
* Profit Margin: ~12.5%

---

### 2. Product-Level Insights

* Profitability varies across products
* A small number of products contribute a larger share of total profit

---

### 3. Customer-Level Insights

* Losses are concentrated among a small group of customers
* A few customers contribute disproportionately to total losses

---

### 4. Segment Analysis

* SMB segment generates the highest profit
* Strategic and Enterprise segments contribute comparatively less

---

### 5. Discount Impact

* Discount shows a weak negative relationship with profit
* On average, profitability turns negative beyond ~20% discount

---

## Key Takeaways

* Profitability is uneven across products and customers
* Losses are localized rather than widespread
* Discounting is associated with reduced profitability but is not the sole factor
* Business performance can be improved by focusing on high-loss areas

---

##  Dashboard

The Power BI dashboard provides a visual summary of:

* Overall performance (KPIs)
* Profit by product
* Loss by customers
* Segment-wise profit comparison


## Conclusion

This project demonstrates a structured approach to analyzing SaaS sales data by combining SQL, Python, and Power BI.
The focus remains on identifying actionable patterns while maintaining clarity and simplicity in analysis.

* refine your **GitHub repo structure (folders + naming)**
* or create a **clean project thumbnail/banner (very useful for visibility)**
