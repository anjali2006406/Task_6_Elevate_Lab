# Key SQL Questions and Insights

**Q1.Total number of distinct mobile models sold**

 > **Query**: Count the number of unique mobile models in the dataset.

 > **Concepts**: COUNT(DISTINCT), SELECT

**Input Query:**

> SELECT COUNT(DISTINCT Models) AS total_mobile_models
FROM Sales;

**Result Output:**

![image](https://github.com/user-attachments/assets/e8a3962c-5149-4e35-8180-faf1728cbf4a)

**Q2. Brand-wise Total Number of Mobile Models**

> **Query**: Find how many models each brand offers.

> **Concepts**: GROUP BY, COUNT(DISTINCT)

**Input Query:**

> SELECT Brands, COUNT(DISTINCT Models) AS total_models
FROM Sales GROUP BY Brands;

**Result Output:**

![image](https://github.com/user-attachments/assets/2dff9e9d-b2c2-4f1b-a5f6-406947d8dc3c)


**Q3. **Color-wise Count of Mobile Phones**

> **Query**: Number of phones available in each color.

> **Concepts**: GROUP BY, COUNT(), ORDER BY

**Input Query:**

> SELECT Colors, COUNT(*) AS total_colors
FROM Sales GROUP BY Colors
ORDER BY total_colors DESC;

**Result Output:**

![image](https://github.com/user-attachments/assets/1ddf4b9b-369e-4482-82b1-a6a8684bc795)






