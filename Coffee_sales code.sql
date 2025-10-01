select * from coffee_data;
select Month_name, sum(money) as total, round(sum(money) * 100/(select sum(money) from coffee_data),2) as perc from coffee_data 
group by Month_name 
order by total desc;
select coffee_name, round(sum(money),2) as total, round(sum(money) * 100 / (select sum(money) from coffee_data),2) as perc from coffee_data
group by coffee_name
order by total desc;
select round(avg(money),2) as avg_spend_per_costomer_per_order from coffee_data;
select sum(money) as total_sales, hour_of_day from coffee_data 
group by hour_of_day
order by total_sales desc
select round(sum(money),2) as revenue, Time_of_Day from coffee_data
group by Time_of_Day
order by revenue desc;

select count(money) as sales_volume, weekdaysort from coffee_data 
where weekdaysort in (1,2,3,4,5)
group by weekdaysort 
order by sales_volume desc;


select sum(money) as revenue, Weekday from coffee_data 


group by Weekday 


order by revenue desc;



select Weekday,coffee_name,count(coffee_name) as pop from coffee_data 


group by  coffee_name , Weekday



order by pop desc



select round(avg(money),2) as average_price, coffee_name from coffee_data
group by coffee_name
order by average_price desc
select coffee_name, count(coffee_name) as total, Time_of_Day from coffee_data
where Time_of_Day = "Morning" 
group by coffee_name
order by total desc;
select * from coffee_data
select sum(money) as total, Month_name from coffee_data
group by Month_name
order by total DESC;
select round(sum(money),2) as total, year(str_to_date(Date, "%m/%d/%Y")) as year from coffee_data
group by  year(str_to_date(Date, "%m/%d/%Y"));
select count(*) as total from coffee_data
where money is Null
select sum(money) as total, Time from coffee_data
group by Time
order by total desc;
select * from coffee_data

select round(sum(money),2) as total_amount, coffee_name from coffee_data 
group by coffee_name
order by total_amount desc;
select round(sum(money),2) as total from coffee_data