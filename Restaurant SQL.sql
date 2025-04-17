create database Cognifyz_Technologies;

use Cognifyz_Technologies;

-- 1. Top 10 Cities with Most Restaurants
SELECT City, COUNT(*) AS total_restaurants
FROM restaurant
GROUP BY City
ORDER BY total_restaurants DESC
LIMIT 10;

-- 2. Top 10 Highest Rated Restaurants
SELECT Restaurant_Name, City, Cuisines, Aggregate_rating
FROM restaurant
ORDER BY Aggregate_rating DESC, Votes DESC
LIMIT 10;

-- 3. Average Price Range by Cuisine
SELECT Cuisines, AVG(Price_range) AS avg_price
FROM restaurant
GROUP BY Cuisines
ORDER BY avg_price DESC;

-- 4. Restaurants in a Specific City 
SELECT *
FROM restaurant
WHERE City = 'Ahmedabad';

-- 5. Count Restaurants Based on Rating Text
SELECT Rating_text, COUNT(*) AS count
FROM restaurant
GROUP BY Rating_text;

-- 6. Find Restaurants with Online Delivery
SELECT Restaurant_Name, City, Cuisines
FROM restaurant
WHERE Has_Online_delivery = 'Yes';
