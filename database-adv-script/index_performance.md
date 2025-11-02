# Index Performance — ALX Airbnb Database

This document explains how indexes were used to optimize query performance in the Airbnb-style database.

## 🧠 Indexed Columns

The following columns were identified as high-usage based on frequent JOINs, WHERE filters, and aggregations:

- `users.id`
- `bookings.user_id`
- `bookings.property_id`
- `properties.id`
- `reviews.property_id`

## 🛠️ Index Creation

Indexes were created using `CREATE INDEX` statements in `database_index.sql`.

## 📊 Performance Measurement

### Query Example (Before Index)

```sql
EXPLAIN ANALYZE
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.date > '2025-01-01';
