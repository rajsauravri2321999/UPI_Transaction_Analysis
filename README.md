# UPI Transaction Analysis

## Project Overview

This project analyzes large-scale UPI transaction data to uncover business insights, identify fraud patterns, reduce transaction failures, and improve customer experience. The analysis combines SQL, Python, Excel, and Power BI to transform raw transactional data into actionable business recommendations.

## Business Problem

UPI platforms handle millions of transactions daily and face several operational challenges:

* Fraudulent transactions and security risks
* Transaction failures caused by network and banking issues
* Device-related fraud activities
* Customer satisfaction and support challenges
* Merchant performance optimization

The goal of this project is to leverage data analytics to improve platform reliability, security, and business growth.

---

## Objectives

* Analyze transactional and operational data from UPI systems
* Identify customer, merchant, and payment behavior patterns
* Detect fraud indicators and high-risk activities
* Measure transaction success and failure trends
* Build KPI dashboards for business decision-making
* Generate strategic recommendations for platform improvement

---

## Dataset Information

The project uses data from 7 interconnected datasets:

1. Customer Master
2. Merchant Information
3. Device Information
4. UPI Account Details
5. Transaction History
6. Fraud Alert History
7. Customer Feedback

### Dataset Scale

* 10,000 Customers
* 500 Merchants
* 12,000 Devices
* 12,000 UPI Accounts
* 100,000 Transactions
* 2,000 Fraud Alerts
* 4,000 Feedback Records

---

## Tools & Technologies

* **Excel** – Data Cleaning & Validation
* **SQL** – Database Design & Data Extraction
* **Python** – EDA & Statistical Analysis
* **Power BI** – Dashboard Development
* **Pandas, NumPy, Matplotlib, Seaborn**
* **SciPy (ANOVA & Chi-Square Testing)**

---

## Key Performance Indicators (KPIs)

| KPI                        | Value  |
| -------------------------- | ------ |
| Total Transactions         | 100K   |
| Average Transaction Amount | ₹42.42 |
| Success Rate               | 92.14% |
| Failure Rate               | 5.87%  |
| Active Customers           | 6,748  |

---

## Statistical Analysis

### One-Way ANOVA Test

**Objective:** Determine whether transaction amounts differ across device types.

**Result:**

* P-value > 0.05
* No significant difference in spending behavior across devices.

### Chi-Square Test: Fraud vs Channel

**Objective:** Check whether fraud occurrence depends on transaction channel.

**Result:**

* P-value = 0.529
* No significant association found.

### Chi-Square Test: Fraud vs Rooted Device

**Objective:** Analyze relationship between rooted devices and fraud occurrence.

**Result:**

* P-value < 0.05
* Strong association identified.
* Rooted devices show significantly higher fraud rates.

---

## Key Business Insights

### 1. Rapid Growth in UPI Transactions

* Transaction volume increased significantly over time.
* Strong platform adoption and user engagement observed.

### 2. Transaction Failures Need Attention

Major failure reasons include:

* Incorrect PIN
* Network Errors
* Bank Downtime
* Account Block Issues

### 3. Fraud is Pattern-Driven

Fraudulent activities are concentrated around:

* Suspicious login activity
* Unusual transaction amounts
* Frequent transaction failures
* Abnormal transaction timings

### 4. Rooted Devices Present High Risk

* Rooted devices contribute disproportionately to fraud incidents.
* Security monitoring should prioritize these devices.

### 5. High-Performing Merchant Categories

Top categories driving transaction volume:

* Apparel
* Electronics
* Online Shopping
* Food
* Grocery
* Transportation

---

## Business Recommendations

### Fraud Prevention

* Implement real-time fraud detection systems.
* Strengthen authentication for high-risk users.
* Monitor suspicious transaction patterns proactively.

### Transaction Failure Reduction

* Improve network reliability.
* Enhance PIN recovery and validation mechanisms.
* Optimize banking partner integrations.

### Device Security

* Apply stricter controls on rooted devices.
* Introduce additional verification layers.

### Merchant Growth

* Launch targeted offers and cashback campaigns.
* Strengthen partnerships with high-performing merchants.

---

## Dashboard Features

* Transaction Performance Overview
* Success vs Failure Analysis
* Fraud Risk Monitoring
* Device Risk Assessment
* Merchant Category Insights
* Customer Activity Tracking
* Business KPI Summary

---

## Conclusion

The analysis demonstrates that data-driven interventions can significantly improve UPI platform performance. While transaction growth remains strong, reducing failures and proactively preventing fraud can enhance user trust, operational efficiency, and long-term business growth.

---

### Author

**Saurav Raj**
Data Analytics Capstone Project | Career247

⭐ If you found this project interesting, feel free to star the repository.
