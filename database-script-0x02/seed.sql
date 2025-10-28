-- Sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-001', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', '555-1234', 'guest'),
  ('uuid-002', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '555-5678', 'host'),
  ('uuid-003', 'Carol', 'Lee', 'carol@example.com', 'hashed_pw_3', NULL, 'admin');

-- Sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('prop-001', 'uuid-002', 'Cozy Cottage', 'A quiet retreat in the countryside.', 'Napa Valley, CA', 120.00),
  ('prop-002', 'uuid-002', 'Urban Loft', 'Modern loft in downtown.', 'Seattle, WA', 180.00);

-- Sample Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('book-001', 'prop-001', 'uuid-001', '2025-11-01', '2025-11-05', 480.00, 'confirmed'),
  ('book-002', 'prop-002', 'uuid-001', '2025-12-10', '2025-12-12', 360.00, 'pending');

-- Sample Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay-001', 'book-001', 480.00, 'credit_card'),
  ('pay-002', 'book-002', 360.00, 'paypal');

-- Sample Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('rev-001', 'prop-001', 'uuid-001', 5, 'Loved the peaceful atmosphere!'),
  ('rev-002', 'prop-002', 'uuid-001', 4, 'Great location, but a bit noisy.');

-- Sample Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('msg-001', 'uuid-001', 'uuid-002', 'Hi Bob, is the cottage available for early November?'),
  ('msg-002', 'uuid-002', 'uuid-001', 'Yes, it’s available. Let me know if you’d like to book.');
