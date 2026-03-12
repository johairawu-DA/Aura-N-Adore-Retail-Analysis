# Aura-N-Adore-Retail-Analysis
This project focuses on Retail Analytics for a high-end jewelry brand, Aura &amp; Adorn. The database is designed to track sales performance, inventory movements and customer engagement across multiple boutique locations.

***Note on Data Source:***
*The dataset used in this analysis is synthetically generated for the purpose of demonstrating data modeling, SQL querying, and visualization. While the business logic and relational structure are based on real-world retail jewelry standards, all customer names, transactions, and branch locations are fictional.*

## Background & Overview
This project focuses on Retail Analytics for a high-end jewelry brand, Aura & Adorn. The database is designed to track sales performance, inventory movements and customer engagement across multiple boutique locations.

The system stores information about Store Branches, Sales Associates, Product Categories (e.g., Rings, Necklaces, Watches), Individual Products, Customers and Sales Transactions. Each sale records the specific items sold, the associate responsible and branch location.

The purpose of this database is to provide actionable insights into luxury retail operations. Using SQL queries, the system identifies top-performing sales associates, determines which jewelry categories drive the highest revenue, ranks branches by regional performance, and analyzes seasonal sales trends. These insights help management optimize inventory stock levels, refine marketing strategies and reward high-performing staff members.


## Data Structure Overview
1. Branches
   Stores information about physical boutique locations.

* branch_id (Primary Key)
* branch_name
* city
* region
  
2. Sales_Associate
   Stores details of staff members.

* associate_id (Primary Key)
* first_name
* last_name
* branch_id (Foreign Key references branches.branch_id)
* hire_date

3. Product_Categories
   Classifies jewelry types.

* category_id (Primary Key)
* category_name


4. Products
   Stores the classification of research studies.

* product_id (Primary Key)
* product_name
* category_id (Foreign Key references product_categories.category_id)
* material
* unit_price

5. Customers
   Information on the client base.

* customer_id (Primary Key)
* first_name 
* last_name
* membership_level

6. Sales_Transactions
   Records of individual sales.

* sale_id (Primary Key)
* product_id (Foreign Key references products.product_id)
* customer_id (Foreign Key references customers.customer_id)
* associate_id (Foreign Key references sales_associates.associate_id)
* branch_id (Foreign Key references branches.branch_id)
* sale_date
* quantity
* total_amount

## Executive Summary
This case study presents a Retail Analytics database designed for a high-end jewelry business. The purpose of the database is to track luxury sales activities across multiple branches and analyze organizational performance.

The database stores information about branches, sales associates, product categories, jewelry items, customers, and sales transactions. By organizing these entities in a relational structure, the system allows for efficient storage, retrieval and analysis of the retail data.

Several analytical SQL queries were developed to generate meaningful insights from the dataset. The Engagement Analysis identifies customers who have conducted multiple purchases, helping measure client retention and loyalty. The Category Contribution Analysis determines which product categories contribute most to the total revenue, providing insight into inventory performance and profitability.

<img width="770" height="603" alt="Visualization Aura N Adore" src="https://github.com/user-attachments/assets/47ace6f2-9eac-4c9b-bb7b-5223861d3e5b" />

Live view of dashboard [Click Here](https://app.powerbi.com/groups/me/reports/c3be9e05-28b0-4a2b-bbae-d587e5f6e258/c1d5a0f4b3da0b797d01?experience=power-bi)


The Regional Ranking Analysis compares different branch location based on their total sales revenue to determine which cities and regions have the strongest market performance. The Temporal Trend Analysis also evaluates the monthly growth of sales transactions to understand how jewelry purchasing behavior changes over time.
The results of these analyses provide valuable insights into sales productivity, inventory allocation, and branch-level performance.

## Insights Deep Dive
Aura N Adore generated a total revenue of ₱2.08 million between January and April 2026 across its 10 branches in the Philippines.
* Product Performance: Luxury Watches are the primary revenue driver, contributing ₱1.19 million, which accounts for 57.55% of the total revenue. Engagement Rings follow in second place, contributing 18.86% (approximately ₱391,000) of total sales.
* Regional Performance: The BGC branch is currently the top-performing location, generating the highest revenue compared to other cities.
* Temporal Trends: Sales showed a significant surge in March, marking the peak growth period for the first half of the year. However, there was a noticeable decrease in sales volume moving into April.

## Recommendations
* Capitalize on Seasonal Trends: Since March shows a massive peak—likely due to the "wedding and engagement season"—the marketing team should launch early-bird promotions in February to capture this demand even sooner.
* Boost Low-Performing Months: To address the dip in April, consider introducing "Post-Season" sales or special Mother's Day previews to maintain sales momentum after the March peak.
* Inventory Focus: Given that Luxury Watches account for over half of your revenue, ensure that the BGC and Makati branches have high stock levels of premium watch models to avoid missed sales opportunities.
