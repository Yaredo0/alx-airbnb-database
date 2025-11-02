# SQL Join Queries — ALX Airbnb Database

This script demonstrates the use of SQL joins to extract meaningful relationships between users, bookings, properties, and reviews.

## 📁 Files

- `joins_queries.sql`: Contains three SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.
- `README.md`: Describes the purpose and usage of the queries.

## 🧠 Query Summary

1. **INNER JOIN**: Retrieves all bookings and the users who made them.
2. **LEFT JOIN**: Retrieves all properties and their reviews, including properties without reviews.
3. **FULL OUTER JOIN**: Retrieves all users and all bookings, even if they are not linked.

## ▶️ Usage

Run the queries in your SQL environment connected to the Airbnb database schema. Make sure the following tables exist:
- `users`
- `bookings`
- `properties`
- `reviews`
# SQL Subqueries — ALX Airbnb Database

This script demonstrates the use of both non-correlated and correlated subqueries to extract meaningful insights from Airbnb-style data.

## 📁 Files

- `subqueries.sql`: Contains two SQL queries using subqueries.
- `README.md`: Describes the purpose and usage of the queries.

## 🧠 Query Summary

1. **Non-correlated subquery**:  
   Retrieves all properties where the average rating is greater than 4.0.  
   Uses a subquery on the `reviews` table grouped by `property_id`.

2. **Correlated subquery**:  
   Retrieves all users who have made more than 3 bookings.  
   Uses a subquery that references the outer query's `user_id`.

## ▶️ Usage

Run the queries in your SQL environment connected to the Airbnb database schema. Make sure the following tables exist:
- `users`
- `bookings`
- `properties`
- `reviews`
