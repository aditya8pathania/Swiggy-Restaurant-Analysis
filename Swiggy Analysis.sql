-- Ques 1 - How many restraunts have a rating greater than 4.5 ?  -- 13
SELECT 
    COUNT(DISTINCT restaurant_name) AS High_Rated_Restraunts
FROM
    swiggy
WHERE
    rating > 4.5;

-- Ques 2 - Which is the Top 1 City with the highest number of restraunts 
SELECT 
    city, COUNT(DISTINCT restaurant_name) AS Rst_cnt
FROM
    swiggy
GROUP BY city
ORDER BY Rst_cnt DESC
LIMIT 1;

-- Ques 3 - How many Restaurants have the word "PIZZA" in there name?
SELECT 
    COUNT(DISTINCT restaurant_name) AS Rst_name
FROM
    swiggy
WHERE
    restaurant_name LIKE '%PIZZA%';
    
-- Ques 4 - What is the most common cuisine among the restaurants in the Dataset?
SELECT 
    cuisine, COUNT(cuisine) AS Cnt
FROM
    swiggy
GROUP BY cuisine
ORDER BY Cnt DESC;

-- Ques 5 - What is the Average Rating of restaurants in each city?
SELECT 
    city, AVG(rating) AS Avg_rating
FROM
    swiggy
GROUP BY city;

-- Ques 6 - What is the highest price of item under 'Recommended' MENU Catergory for each restaurant?
SELECT 
    restaurant_name, MAX(price) AS highest_price
FROM
    swiggy
WHERE
    menu_category = 'Recommended'
GROUP BY restaurant_name
ORDER BY highest_price DESC;

-- Ques 7 - Find the Top 5 most Expensive restaurants that offer cuisine other than indian cuisine.
SELECT DISTINCT
    restaurant_name, cost_per_person
FROM
    swiggy
WHERE
    cuisine <> 'Indian'
ORDER BY cost_per_person DESC
LIMIT 5;

-- Ques 8 - Find the restaurants that have an average cost which is higher than the total average cost of all restaurants together.
SELECT DISTINCT
    restaurant_name, cost_per_person
FROM
    swiggy
WHERE
    cost_per_person > (SELECT 
            AVG(cost_per_person)
        FROM
            swiggy);

-- Ques 9 - Retrieve the details of restaurants that have the same name but are located in different cities.
SELECT DISTINCT
    t1.restaurant_name, t1.city, t2.city
FROM
    swiggy t1
        JOIN
    swiggy t2 ON t1.restaurant_name = t2.restaurant_name
WHERE
    t1.city <> t2.city;

-- Ques 10 - Which restaurant offers the most number of items in the 'MAIN COURSE' Category?
SELECT DISTINCT
    restaurant_name, COUNT(item) AS no_of_items
FROM
    swiggy
WHERE
    menu_category = 'MAIN COURSE'
GROUP BY restaurant_name
ORDER BY no_of_items DESC
LIMIT 1;

-- Ques 11 - list the names of restaurants that are 100% vegetarian in alphabetical order of restaurant name
SELECT 
    restaurant_name,
    (COUNT(CASE
        WHEN veg_or_nonveg = 'veg' THEN 1
    END) * 100 / COUNT(*)) AS veg_Percentage
FROM
    swiggy
GROUP BY restaurant_name
HAVING veg_percentage = 100
ORDER BY restaurant_name ASC;

-- Ques 12 - Which is the restaurant providing the lowest average price for all items ?
SELECT DISTINCT
    restaurant_name, AVG(price) AS Avg_Cost
FROM
    swiggy
GROUP BY restaurant_name
ORDER BY Avg_Cost
LIMIT 1;

-- Ques 13 - Which Top 5 restaurant offers highest number of categories ? 
SELECT DISTINCT
    restaurant_name, COUNT(DISTINCT menu_category) AS Cnt
FROM
    swiggy
GROUP BY restaurant_name
ORDER BY Cnt DESC
LIMIT 5;

-- Ques 14 - Which Restaurant Provides the highest percentage of Non Vegetarian Food ?
SELECT 
    restaurant_name,
    (COUNT(CASE
        WHEN veg_or_nonveg = 'Non-veg' THEN 1
    END) * 100 / COUNT(*)) AS Non_veg_Percentage
FROM
    swiggy
GROUP BY restaurant_name
ORDER BY Non_veg_Percentage DESC;

