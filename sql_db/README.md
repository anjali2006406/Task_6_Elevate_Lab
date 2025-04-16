# Key SQL Questions and Insights

**Q1.Total number of distinct mobile models sold**

 > **Query**: Total number of distinct mobile models sold?

 > **Concepts**: COUNT(DISTINCT), SELECT

**Input Query:**

> SELECT COUNT(DISTINCT Models) AS total_mobile_models
FROM Sales;

**Result Output:**

![image](https://github.com/user-attachments/assets/b6ca1d80-2d28-4ab5-a426-3729ec8b19c8)


**Q2. Brand-wise Total Number of Mobile Models**

> **Query**: Brand-wise total number of mobile models?

> **Concepts**: GROUP BY, COUNT(DISTINCT)

**Input Query:**

> SELECT Brands, COUNT(DISTINCT Models) AS total_models
FROM Sales GROUP BY Brands;

**Result Output:**

![image](https://github.com/user-attachments/assets/2dff9e9d-b2c2-4f1b-a5f6-406947d8dc3c)


**Q3. Color-wise Count of Mobile Phones**

> **Query**: Color-wise count of mobile phones?

> **Concepts**: GROUP BY, COUNT(), ORDER BY

**Input Query:**

> SELECT Colors, COUNT(*) AS total_colors
FROM Sales GROUP BY Colors
ORDER BY total_colors DESC;

**Result Output:**

![image](https://github.com/user-attachments/assets/1ddf4b9b-369e-4482-82b1-a6a8684bc795)


**Q4.Brand with the Highest Average Rating**

> **Query**: Which brand has the highest average rating?

> **Concepts**: AVG(), GROUP BY, ORDER BY

**Input Query:**

> SELECT Brands, ROUND(AVG(Rating), 2) AS average_rating
FROM Sales GROUP BY Brands
ORDER BY average_rating DESC
LIMIT 1;

**Result Output:**

![image](https://github.com/user-attachments/assets/7a26b5d3-134b-4ca7-9100-138b094faa04)


**Q5.Top 5 Models with Highest Discount Percentage**

> **Query**:Top 5 models with highest discount percentage?

> **Concepts**: ORDER BY, LIMIT

**Input Query:**

> SELECT Models, Discount, `Discount Percentage`
FROM Sales ORDER BY `Discount Percentage` DESC
LIMIT 5;

**Result Output:**

![image](https://github.com/user-attachments/assets/3955b5ac-bd9a-4926-8cee-40b22f7efdcd)


**Q6.Mobile with the Highest Selling Price**

> **Query**: Which mobile has the highest selling price?

> **Concepts**: ORDER BY, LIMIT

**Input Query:**

> select Mobile, `Selling Price` from
Sales order by `Selling Price` desc
limit 1;


**Result Output:**

![image](https://github.com/user-attachments/assets/d3f8f2c7-938d-4fdf-940d-adb100e015ac)


**Q7.Camera-wise Average Selling Price**

> **Query**:Camera-wise average selling price (Camera = Yes/No)?

> **concepts**: GROUP BY, AVG(), ROUND()

**Input Query:**

> select Camera, round(avg(`Selling Price`), 2) 
as avg_selling_price
from Sales group by Camera
order by avg_selling_price desc;


**Result Output:**

![image](https://github.com/user-attachments/assets/81a04628-4be9-4675-9b96-8d0e13add4e6)


**Q8.Mobiles having original price greater than 40000**

> **Query**: List of mobiles having original price greater than 40000?

> **Concepts**: WHERE,ORDER BY

**Input Query:**

> select Mobile, `Original Price`
from Sales
where `Original Price` > 40000
order by `Original Price` desc;


**Result Output:**

![image](https://github.com/user-attachments/assets/f61cd3b9-f629-46e5-9947-cc17bf604d97)


**Q9.Mobiles that have camera**

> **Query**: Total number of mobiles that have camera?

> **Concepts**: WHERE

**Input Query:**

> select count(*) as camera_phones
from Sales where Camera = 'Yes';

**Result Output:**

![image](https://github.com/user-attachments/assets/31b3e070-7b12-4378-b425-cf88b7e56031)

**10.Brand highest total discount amount**

> **Query**: Brand with highest total discount amount?

> **Concepts**:GROUP BY , ORDER BY

**Input Query:**

> select Brands, sum(Discount) as total_discount
from Sales group by Brands
order by total_discount desc
limit 1;

**Result Output:**

![image](https://github.com/user-attachments/assets/6cc480bf-4b09-4956-8e4b-c2e80197a0c6)


--- 

