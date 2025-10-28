# Airbnb Database Schema

This directory contains the SQL script used to define the schema for the Airbnb-style booking system.

## Files

- `schema.sql`: Contains all `CREATE TABLE` statements, constraints, and indexes.

## Schema Overview

The database includes the following entities:

- **User**: Stores user details and roles.
- **Property**: Listings hosted by users.
- **Booking**: Reservations made by users.
- **Payment**: Payment records linked to bookings.
- **Review**: Feedback from users about properties.
- **Message**: Communication between users.

## Key Features

- UUIDs used as primary keys for scalability and uniqueness.
- ENUMs for controlled status and role values.
- Foreign key constraints to maintain relational integrity.
- Indexes on frequently queried fields for performance optimization.

This schema is designed to support a scalable, secure, and user-friendly booking platform.
