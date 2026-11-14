use sql_practice;
-------------------
#Basic Questions
select * from orders;
select orderid,customerid,sales from orders;
select * from orders where sales > 500;
select * from orders where quantity = 1;
select * from orders where country = "USA";
select distinct(country) from orders;
select * from orders where profit < 1;
select * from orders where discount >= 0.2;
select * from orders where ship_date is null;
select * from orders where sales = quantity*unit_price;
-------------------
#Intermediate Questions
select * from orders where country = "USA" and sales > 300;
select * from orders where category = "Furniture" or category = "Technology";
select * from orders where customerid like "C%";
select * from orders where order_date between '2023-01-01' and '2023-12-31' ;
select * from orders where country in("USA","UK","Germany") order by sales desc;
-------------------
#Advanced Questions
select * from orders where sales > 500 and profit > 0 order by profit desc;
select * from orders where discount is not null and discount > 0 order by discount;
select * from orders where (quantity*unit_price) - discount > 1000;
select * from orders where product_name like "%Chair%" and sales between 200 and 1000;
select distinct(customerid) from orders where country ="USA" and profit < 0 order by customerid;