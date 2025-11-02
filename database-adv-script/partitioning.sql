-- 1️⃣ Create partitioned bookings table by start_date (monthly partitions)
CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  user_id INT,
  property_id INT,
  start_date DATE,
  end_date DATE,
  status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- 2️⃣ Create monthly partitions (example: Jan–Mar 2025)
CREATE TABLE bookings_2025_01 PARTITION OF bookings
  FOR VALUES FROM ('2025-01-01') TO ('2025-02-01');

CREATE TABLE bookings_2025_02 PARTITION OF bookings
  FOR VALUES FROM ('2025-02-01') TO ('2025-03-01');

CREATE TABLE bookings_2025_03 PARTITION OF bookings
  FOR VALUES FROM ('2025-03-01') TO ('2025-04-01');

-- 3️⃣ Sample query to test performance
EXPLAIN ANALYZE
SELECT *
FROM bookings
WHERE start_date BETWEEN '2025-01-15' AND '2025-01-31';
