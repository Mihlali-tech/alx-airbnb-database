-- Sample Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice@example.com', 'hash1', '1234567890', 'guest', CURRENT_TIMESTAMP),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob@example.com', 'hash2', '0987654321', 'host', CURRENT_TIMESTAMP);

-- Sample Properties
INSERT INTO Property (property_id, host_id, name, description, location, price_pernight, created_at, updated_at)
VALUES
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Cottage', 'A nice cozy place', 'Cape Town', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '22222222-2222-2222-2222-222222222222', 'City Apartment', 'Modern apartment in downtown', 'Johannesburg', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
