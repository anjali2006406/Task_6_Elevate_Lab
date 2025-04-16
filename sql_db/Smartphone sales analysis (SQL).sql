Create database Smartphone_sales;
use Smartphone_sales;

select*from sales;

-- 1.Total number of distinct mobile models sold?
select count(distinct Models) as total_mobile_models
from Sales;

-- 2.Brand-wise total number of mobile models?
select Brands, count(distinct Models) as total_models
from Sales group by Brands;

-- 3.Color-wise count of mobile phones?
select Colors, count(*) as total_colors
from Sales group by Colors
order by total_colors desc;

-- 4.Which brand has the highest average rating?
select Brands, round(avg(Rating), 2) as average_rating
from Sales group by Brands
order by average_rating desc limit 1;

-- 5.Top 5 models with highest discount percentage?
select Models, Discount, `discount percentage`
from Sales order by `discount percentage` desc
limit 5;

-- 6.Which mobile has the highest selling price?
select Mobile, `Selling Price` from
Sales order by `Selling Price` desc
limit 1;

-- 7.Camera-wise average selling price (Camera = Yes/No)?
select Camera, round(avg(`Selling Price`), 2) 
as avg_selling_price
from Sales group by Camera
order by avg_selling_price desc;

-- 8.List of mobiles having original price greater than 40000?
select Mobile, `Original Price`
from Sales
where `Original Price` > 40000
order by `Original Price` desc;

-- 9.Total number of mobiles that have camera?
select count(*) as camera_phones
from Sales
where Camera = 'Yes';

-- 10.Brand with highest total discount amount?
select Brands, sum(Discount) as total_discount
from Sales
group by Brands
order by total_discount desc
limit 1;












