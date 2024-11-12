USE`database`;
Select*from mobile;

-- Check mobile features and price list --
Select Phone_name, Price from mobile; 

-- Find out the price of 5 most expensive phones -- 
Select*from mobile
order by Price desc
limit 5;

-- Find out the price of 5 most cheapest phones -- 
Select*from mobile
order by Price asc
limit 5;

-- List of top 5 samsung phones with price and all features --
Select*from mobile where brands = "Samsung"
order by Price desc
limit 5;

-- Must have android phone list then top 5 High price android phones --
Select*from mobile where Operating_System_Type = "Android"
order by Price desc
limit 5;

-- Must have android phone list then top 5 Lower price android phones --
Select*from mobile where Operating_System_Type = "Android"
order by Price asc
limit 5;

-- Must have IOS phone list then top 5 High price IOS phones --
Select*from mobile where Operating_System_Type = "IOS"
order by Price desc
limit 5;

-- Must have IOS phone list then top 5 Lower price IOS phones --
Select*from mobile where Operating_System_Type = "IOS"
order by Price asc
limit 5;

-- Write a query which phone support 5g and also top 5 phones with 5g support --
Select*from mobile where 5G_Availability = "YES"
order by Price desc
limit 5;

-- Total price of all mobiles is to be found with brand name --
Select Brands, Sum(price) from mobile group by Brands;
