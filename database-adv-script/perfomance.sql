-- 1️⃣ Initial query: Retrieve bookings with user, property, and payment details, filtered by date and payment status
SELECT 
  b.id AS booking_id,
  b.date,
  u.id AS user_id,
  u.name AS user_name,
  p.id AS property_id,
  p.name AS property_name,
  pay.id AS payment_id,
  pay.amount,
  pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id
WHERE b.date >= '2025-01-01'
  AND pay.status = 'completed';

-- 2️⃣ Analyze performance
EXPLAIN ANALYZE
SELECT 
  b.id AS booking_id,
  b.date,
  u.id AS user_id,
  u.name AS user_name,
  p.id AS property_id,
  p.name AS property_name,
  pay.id AS payment_id,
  pay.amount,
  pay.status
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.id = pay.booking_id;

-- 3️⃣ Refactored query: Reduce joins and rely on indexed columns
-- Assumes indexes exist on bookings.user_id, bookings.property_id, payments.booking_id
EXPLAIN ANALYZE
SELECT 
  b.id AS booking_id,
  b.date,
  u.name AS user_name,
  p.name AS property_name,
  pay.amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;
