-- -------------------------------------------------------------------------
-- ---------------------------- Exploring Data -----------------------------

select *
from [HR-Employee-Attrition]

-- Show Count Employee
select count(Employee_ID) as Count_Employee
from [HR-Employee-Attrition]


-- Show the difference between salaries
select 
	max(Monthly_Rate) as max_Salery,
	min(Monthly_Rate) as min_salery,
	round(AVG(Monthly_Rate),0) as Avg_salerys
from [HR-Employee-Attrition]


-- Number For Each Gender
select
	Gender,
	COUNT(*) as Count_Each_Gender
from [HR-Employee-Attrition]
group by Gender 
order by Count_Each_Gender desc


-- Departments 
select distinct(Department)
from [HR-Employee-Attrition]


-- Number of employees who left work or not
select 
	Attrition,
	count(*) as The_count
from [HR-Employee-Attrition]
group by Attrition
order by The_count desc


-- Number of employees who have OverTime or not
select 
	Over_Time,
	count(*) as The_count
from [HR-Employee-Attrition]
group by Over_Time
order by The_count desc


-- The overtime by department
select 
	Department,
	COUNT(Over_Time) as The_Count
from [HR-Employee-Attrition]
where Over_Time = 'Yes'
group by Department 
order by The_Count desc


-- The overtime by Jop_Level
select 
	Job_Level,
	COUNT(Over_Time) as The_Count
from [HR-Employee-Attrition]
where Over_Time = 'Yes'
group by Job_Level 
order by The_Count desc


-- The overtime by Jop_Role
select 
	Job_Role,
	COUNT(Over_Time) as The_Count
from [HR-Employee-Attrition]
where Over_Time = 'Yes'
group by Job_Role 
order by The_Count desc


-- Show Number For Each Marital Status
select 
	Marital_Status,
	count(*) as The_count
from [HR-Employee-Attrition]
group by Marital_Status
order by The_count desc

-- Show Academic Degree
select 
	distinct(Education)
from [HR-Employee-Attrition]

-- Number Of Employees Per Job Role
select 
	Job_Role,
	count(*) as the_count
from [HR-Employee-Attrition]
group by Job_Role
order by the_count desc

-- Number Of Employees For Each Type Of Business Travel
select 
	Business_Travel,
	count(*) as the_count
from [HR-Employee-Attrition]
group by Business_Travel
order by the_count desc

-- Number Of Employees For Total Working Years
select 
	Total_Working_Years,
	count(*) as the_count
from [HR-Employee-Attrition]
group by Total_Working_Years
order by the_count desc


-- Employees' Distance From Their Homes
select 
	Distance_From_Home,
	count(*) as the_count
from [HR-Employee-Attrition]
group by Distance_From_Home
order by the_count desc


-- The Number Of Employees Who Worked In More Than One Company
select 
	Num_Companies_Worked,
	count(*) as the_count
from [HR-Employee-Attrition]
group by Num_Companies_Worked
order by the_count desc

-- Average Monthly Rate For Each Department
select 
	Department,
	round(AVG(Monthly_Rate),2) as Avg_Monthly_Rate
from [HR-Employee-Attrition]
group by Department
order by Avg_MOnthly_Rate desc


-- Number Of Employees Per Age Group
select 
	Age_group,
	COUNT(*) as The_Count
from [HR-Employee-Attrition]
group by Age_group
order by The_Count desc

-- Average Monthly Rate For Business_Travel
select 
	Business_Travel,
	round(AVG(Monthly_Rate),2) as Avg_Monthly_Rate
from [HR-Employee-Attrition]
group by Business_Travel
order by Avg_MOnthly_Rate desc



