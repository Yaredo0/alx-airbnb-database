# Partitioning Performance — ALX Airbnb Database

This report documents the implementation and impact of table partitioning on the `bookings` table.

## 🧠 Problem

The `bookings` table contains a large volume of data, and queries filtering by `start_date` were slow due to full table scans.

## 🛠️ Solution

Partitioned the `bookings` table by `start_date` using monthly range partitions:
- `bookings_2025_01`
- `bookings_2025_02`
- `bookings_2025_03`

## 📊 Performance Test

Used `EXPLAIN ANALYZE` to compare query performance before and after partitioning:

```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2025-01-15' AND '2025-01-31';
