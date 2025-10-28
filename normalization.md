# Database Normalization: Achieving 3NF

This document outlines the normalization process applied to the Airbnb-style database schema to ensure it meets Third Normal Form (3NF). The goal is to eliminate redundancy, ensure data integrity, and optimize relational structure.

---

## ✅ First Normal Form (1NF)

**Requirements:**
- Atomic values (no repeating groups or arrays)
- Unique rows with a primary key

**Validation:**
- All tables use UUIDs as primary keys.
- Attributes contain atomic values (e.g., `email`, `pricepernight`, `start_date`).
- No repeating groups or multivalued fields.

✅ **Schema satisfies 1NF.**

---

## ✅ Second Normal Form (2NF)

**Requirements:**
- Must be in 1NF
- All non-key attributes must be fully functionally dependent on the entire primary key

**Validation:**
- No composite primary keys are used.
- All non-key attributes in each table depend solely on their respective primary key.

✅ **Schema satisfies 2NF.**

---

## ✅ Third Normal Form (3NF)

**Requirements:**
- Must be in 2NF
- No transitive dependencies (non-key attributes should not depend on other non-key attributes)

**Validation and Adjustments:**

### 1. **User Table**
- Attributes like `role`, `email`, and `phone_number` depend only on `user_id`.
- No transitive dependencies.

### 2. **Property Table**
- `host_id` is a foreign key referencing `User(user_id)`.
- All other attributes (e.g., `name`, `location`, `pricepernight`) depend only on `property_id`.

### 3. **Booking Table**
- `user_id` and `property_id` are foreign keys.
- `total_price` is derived from `pricepernight × duration`, but stored for performance.
  - ✅ Acceptable as a derived field with justification.

### 4. **Payment Table**
- `payment_method`, `amount`, and `payment_date` depend only on `payment_id`.
- No transitive dependencies.

### 5. **Review Table**
- `rating` and `comment` depend only on `review_id`.
- Foreign keys ensure proper linkage without redundancy.

### 6. **Message Table**
- `sender_id` and `recipient_id` are foreign keys.
- `message_body` and `sent_at` depend only on `message_id`.

✅ **Schema satisfies 3NF.**

---

## Summary

The database schema is designed to meet 3NF by:
- Ensuring atomic and non-redundant attributes
- Using UUIDs as primary keys
- Establishing clear foreign key relationships
- Avoiding transitive dependencies

This normalization ensures data consistency, scalability, and efficient querying across the system.
