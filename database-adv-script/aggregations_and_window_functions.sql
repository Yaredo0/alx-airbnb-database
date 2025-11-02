-- 1️⃣ Aggregation: Total number of bookings made by each user
SELECT 
  user_id,
  COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- 2️⃣ Window Function: Rank properties by total bookings
SELECT 
  property_id,
  COUNT(*) AS total_bookings,
  RANK() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM bookings
GROUP BY property_id;
