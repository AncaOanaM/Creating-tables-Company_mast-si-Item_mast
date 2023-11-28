--21. From the following tables write a SQL query to select all rows from both participating tables as long 
--as there is a match between pro_com and com_id.
select
*
from company_mast cm
join item_mast im
	on cm.com_id=im.pro_com

--22.Write a SQL query to display the item name, price, and company name of all the products

select
	im.pro_name ItemName,
	im.pro_price Price,
	cm.com_name CompanyName
from company_mast cm
join item_mast im
	on cm.com_id=im.pro_com

--23.From the following tables write a SQL query to calculate the average price of items of each company. 
--Return average value and company name.

select
	avg(im.pro_price) AvgPrice,
	cm.com_name CompanyName
from company_mast cm
join item_mast im
	on cm.com_id=im.pro_com
group by cm.com_name

--24.From the following tables write a SQL query to calculate and find the average price of items of each 
--company higher than or equal to Rs. 350. Return average value and company name

select
	avg(im.pro_price) AvgPrice,
	cm.com_name CompanyName
from company_mast cm
join item_mast im
	on cm.com_id=im.pro_com
group by cm.com_name
having avg(im.pro_price)>350

--25. From the following tables write a SQL query to find the most expensive product of each company. 
--Return pro_name, pro_price and com_name

select
	im.pro_price,
	im.pro_name ProductName,
	cm.com_name CompanyName
from company_mast cm
join item_mast im
	on cm.com_id=im.pro_com
where im.pro_price=
		(select max(im.pro_price) 
		from item_mast im
		where im.pro_com=cm.com_id)

