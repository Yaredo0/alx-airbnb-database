-- 1️⃣ INNER JOIN: Bookings with the users who made them
SELECT 
  bookings.id AS booking_id,
  bookings.property_id,
  bookings.date,
  users.id AS user_id,
  users.name AS user_name
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- LEFT JOIN: Properties with their reviews, including properties with no reviews
SELECT 
  properties.id AS property_id,
  properties.name AS property_name,
  reviews.id AS review_id,
  reviews.rating,
  reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- 3️⃣ FULL OUTER JOIN: All users and all bookings, even if unmatched
SELECT 
  users.id AS user_id,
  users.name AS user_name,
  bookings.id AS booking_id,
  bookings.property_id,
  bookings.date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
