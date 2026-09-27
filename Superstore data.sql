create database superstore;


select * from Global_Superstore;

--find the customers as per the total orders quantity

select Customer_ID,Customer_Name,count(distinct(Order_ID))as Total_Orders
from  Global_Superstore
group by 
Customer_ID,Customer_Name
order by 
Total_Orders desc

--find top10 most frequent customers

select top 10 
Customer_ID,Customer_Name,count(distinct(Order_id)) as Total_Orders
from 
Global_Superstore
group by
Customer_ID,Customer_Name
order by Total_Orders desc;


--top 10 customer by sales and profit
select top 10 
Customer_ID,Customer_Name,count(distinct(Order_id)) as Total_Orders,
ROUND(sum(Sales),2) as total_sales,
ROUND(sum(Profit),2)as total_Profit
from 
Global_Superstore
group by
Customer_ID,Customer_Name
order by total_sales desc, total_Profit desc;



