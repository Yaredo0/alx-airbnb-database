# Optimization Report — ALX Airbnb Database

This report documents the process of analyzing and refactoring a complex query to improve performance.

## 🧠 Initial Query

The original query retrieved booking details along with associated user, property, and payment information using multiple JOINs.

## 🔍 Performance Analysis

Using `EXPLAIN ANALYZE`, the query showed:

- Sequential scans on large tables
- High cost due to multiple JOINs
- No use of indexes

## 🛠️ Refactoring Strategy

- Reduced selected columns to only those needed
- Replaced `JOIN` with `LEFT JOIN` for optional payment data
- Relied on indexed columns (`user_id`, `property_id`, `booking_id`) to speed up joins

## ✅ Outcome

The refactored query showed:

- Lower execution time
- Index usage in JOIN conditions
- Reduced memory and CPU cost

This optimization improves responsiveness for booking-related queries in production environments.

