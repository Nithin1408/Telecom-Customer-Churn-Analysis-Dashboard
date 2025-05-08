# Telecom-Customer-Churn-Analysis-Dashboard

# 📊 Customer Churn Analysis – Telecom Company

This project explores customer churn patterns in a telecom company using Python (for EDA), SQL (for business insights), and Power BI (for visualization). The objective is to identify factors influencing customer churn and provide actionable insights to improve retention strategies.

---

## 📁 Files Included

- `Customer_Churn_Analysis_Notebook.ipynb` – EDA and visualization in Python
- `SQL_Queries.sql` – All SQL queries for extracting insights
- `Customer_Churn_Dashboard.pbix` – Power BI dashboard showing churn patterns
- `Dataset.csv - Dataset to be worked on
- 'cleaned Dataset.csv - Dataset which is cleaned and ready for further analysis
- `README.md` – Project overview and documentation

---

## 🛠 Tools & Technologies

- **Python** – Pandas, Matplotlib, Seaborn
- **SQL** – For querying and extracting insights
- **Power BI** – For creating interactive dashboards

---

## 🔍 Key Insights

- Customers with **month-to-month contracts** are more likely to churn.
- **Higher monthly charges** are associated with higher churn risk.
- **Senior citizens** and customers with **shorter tenure** are more likely to leave.
- Customers with **fiber optic internet** and **multiple lines** showed higher churn.
- Long-term contracts (1 or 2 years) reduce churn significantly.

---

## 🧮 Sample SQL Queries

```sql
-- Average Monthly Charges by Churn
SELECT Churn, AVG(MonthlyCharges) AS avg_monthly_charge
FROM churn_data
GROUP BY Churn;

-- Count of Churned Customers by Contract Type
SELECT Contract, Churn, COUNT(*) AS count
FROM churn_data
GROUP BY Contract, Churn;

📈 Power BI Dashboard

The interactive dashboard includes:

Churn distribution (Yes/No)

Churn by contract type, payment method, internet service

Box plot: Monthly Charges vs Churn

Tenure and total charges patterns

High-risk customer filter (MonthlyCharges > 90 & Churn = Yes)

📌 Conclusion

This project demonstrates how data analysis can help telecom businesses reduce churn by identifying key drivers behind customer attrition. With these insights, targeted retention campaigns and better customer engagement strategies can be implemented

