-- ✅ Create indexes to optimize JOINs and filtering
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_id ON properties(id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- ✅ Measure performance BEFORE indexing
EXPLAIN ANALYZE
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.date > '2025-01-01';

-- ✅ Measure performance AFTER indexing
-- (Run this after the indexes above are created)
EXPLAIN ANALYZE
SELECT *
FROM bookings
JOIN users ON bookings.user_id = users.id
WHERE bookings.date > '2025-01-01';
