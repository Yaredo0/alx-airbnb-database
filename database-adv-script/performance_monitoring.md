# Performance Monitoring — ALX Airbnb Database

This report documents the process of monitoring and refining query performance using execution plans and schema adjustments.

## 🔍 Step 1: Monitor Query Performance

Used `EXPLAIN ANALYZE` to inspect frequently used queries:

### Example Query

```sql
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.date >= '2025-01-01';
