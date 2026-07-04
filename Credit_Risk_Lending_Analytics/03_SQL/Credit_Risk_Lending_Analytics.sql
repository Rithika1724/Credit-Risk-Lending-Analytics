create database Credit_Risk_Lending_Analytics

select * from finance_1
select * from finance_2

-- Year-wise Loan Amount Disbursed

select year(issue_d) as "Year",
sum(loan_amnt) as "Loan Amount"
from finance_1
group by Year(issue_d) order by year(issue_d);

-- Grade and sub grade wise revol_bal

select f.grade,
f.sub_grade,
fi.revol_bal
from finance_1 as f
left join finance_2 as fi on f.id = fi.id
order by 1;

-- Total Payment by Verification Status

SELECT
    verification_status,
    SUM(total_pymnt) AS Total_Payment_Received
FROM finance_1 AS f
LEFT JOIN finance_2 AS fi
    ON f.id = fi.id
GROUP BY verification_status



-- State wise and month wise loan status
select addr_state,
loan_status,
term
from finance_1;

-- Home ownership Vs last payment date stats
select fi.last_pymnt_d,
f.home_ownership,
count(fi.last_pymnt_d),
sum(fi.total_pymnt) as Total_Payment
from finance_1 as f
left join finance_2 as fi on f.id = fi.id
group by 1,2;

-- Total Loan Applications
select
count(id) as "Total Customers"
from finance_2;

-- Top 10 States by Total Loan Amount

SELECT
    addr_state,
    ROUND(SUM(loan_amnt),2) AS Total_Loan_Amount
FROM finance_1
GROUP BY addr_state
ORDER BY Total_Loan_Amount DESC
LIMIT 10;

-- Average Interest Rate by Loan Grade

SELECT
    grade,
    ROUND(AVG(int_rate),2) AS Avg_Interest_Rate
FROM finance_1
GROUP BY grade
ORDER BY grade;

-- Top Loan Purposes by Total Funded Amount

SELECT
    purpose,
    ROUND(SUM(funded_amnt),2) AS Total_Funded_Amount
FROM finance_1
GROUP BY purpose
ORDER BY Total_Funded_Amount DESC;

-- Loan Status Summary

SELECT
    loan_status,
    COUNT(*) AS Total_Loans
FROM finance_1
GROUP BY loan_status
ORDER BY Total_Loans DESC;
