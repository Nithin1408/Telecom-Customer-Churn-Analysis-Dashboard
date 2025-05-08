-- #view sample data
SELECT 
    *
FROM
    churn_data
LIMIT 10;


-- #Count of churned vs non-churned
SELECT 
    Churn, COUNT(*) AS total_customers
FROM
    churn_data
GROUP BY Churn;


-- #Percentage of churned customers
SELECT 
    Churn,
    COUNT(*) * 100.0 / (SELECT 
            COUNT(*)
        FROM
            churn_data) AS churn_percentage
FROM
    churn_data
GROUP BY Churn;


-- #Average monthly charges by churn status
SELECT 
    churn, AVG(monthlycharges)
FROM
    churn_data
GROUP BY churn;


-- #Average total charges by churn status
SELECT 
    churn, AVG(totalcharges)
FROM
    churn_data
GROUP BY churn;


-- #Churn by contract type
SELECT 
    contract, churn, COUNT(*) AS customer_count
FROM
    churn_data
GROUP BY Contract , churn;


-- #Gender based churn
SELECT 
    Gender, Churn, COUNT(*) AS count
FROM
    churn_data
GROUP BY Gender , Churn;


-- #churn by payment method
SELECT 
    PaymentMethod, Churn, COUNT(*) AS count
FROM
    churn_data
GROUP BY PaymentMethod , Churn;


-- #Churn vs Tenure
SELECT 
    Churn, AVG(Tenure) AS avg_tenure
FROM
    churn_data
GROUP BY Churn;
