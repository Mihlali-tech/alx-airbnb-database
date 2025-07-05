-- Before creating index (example)
-- EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'some-user-id';

-- User table
CREATE INDEX idx_user_email ON [User](email);

-- Booking table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Property table
CREATE INDEX idx_property_location ON Property(location);

-- After creating index (example)
-- EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'some-user-id';
