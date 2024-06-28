# Swiggy Restaurant Data Analysis 🍽️

## About

This project explores Swiggy restaurant data to uncover insights and trends. The analysis covers ratings, cuisine types, pricing, and menu offerings. The goal is to understand various aspects of restaurant performance and customer preferences. The dataset was obtained from Swiggy's restaurant listings.

## Purposes Of The Project

The major aim of this project is to gain insights into the Swiggy restaurant data to understand the different factors that affect restaurant performance and customer choices.

## About Data

The dataset contains various details about Swiggy restaurants, including ratings, cuisine types, menu categories, prices, and more.

| Column             | Description                                  | Data Type      |
| :----------------- | :------------------------------------------- | :------------- |
| restaurant_name    | Name of the restaurant                       | VARCHAR(100)   |
| city               | City where the restaurant is located         | VARCHAR(50)    |
| cuisine            | Type of cuisine offered                      | VARCHAR(50)    |
| rating             | Rating of the restaurant                     | FLOAT(2, 1)    |
| menu_category      | Category of the menu item                    | VARCHAR(50)    |
| item               | Name of the menu item                        | VARCHAR(100)   |
| price              | Price of the menu item                       | DECIMAL(10, 2) |
| cost_per_person    | Average cost per person                      | DECIMAL(10, 2) |
| veg_or_nonveg      | Indicates if the item is vegetarian or not   | VARCHAR(10)    |

### Analysis List

1. **Ratings Analysis**
   - Number of restaurants with ratings greater than 4.5.
   - Average rating of restaurants in each city.

2. **City Analysis**
   - Top city with the highest number of restaurants.

3. **Cuisine Analysis**
   - Most common cuisine among the restaurants.
   - Restaurants offering the highest percentage of non-vegetarian food.

4. **Pricing Analysis**
   - Highest priced item in the 'Recommended' menu category.
   - Most expensive restaurants offering non-Indian cuisine.
   - Restaurants with costs higher than the overall average.

5. **Menu Analysis**
   - Restaurants with "PIZZA" in their name.
   - Restaurant offering the most items in the 'MAIN COURSE' category.
   - Restaurants providing the lowest average price for all items.
   - Top 5 restaurants offering the highest number of menu categories.

6. **Other Insights**
   - Restaurants with the same name in different cities.
   - 100% vegetarian restaurants in alphabetical order.

## Approach Used

1. **Data Wrangling:**
   - Cleaned and preprocessed the data to handle missing values and ensure data quality.

2. **Feature Engineering:**
   - Created new columns to provide additional insights, such as time of day and day of the week for transactions.

3. **Exploratory Data Analysis (EDA):**
   - Conducted thorough analysis to answer the listed questions and achieve project goals.

## Business Questions Answered

1. Number of unique cities in the data.
2. Top city with the highest number of restaurants.
3. Number of restaurants with "PIZZA" in their name.
4. Most common cuisine among restaurants.
5. Average rating of restaurants by city.
6. Highest price of item under 'Recommended' category for each restaurant.
7. Top 5 most expensive restaurants offering non-Indian cuisine.
8. Restaurants with costs higher than the overall average.
9. Restaurants with the same name in different cities.
10. Restaurant offering the most items in 'MAIN COURSE' category.
11. 100% vegetarian restaurants in alphabetical order.
12. Restaurant with the lowest average price for all items.
13. Top 5 restaurants offering the highest number of menu categories.
14. Restaurant providing the highest percentage of non-vegetarian food.
