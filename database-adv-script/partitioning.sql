-- First, if you have an existing Booking table and want to convert it, you would usually create a new partitioned table.

CREATE TABLE Booking_Partitioned (
    booking_id UUID PRIMARY KEY,
    property_id UUID,
    user_id UUID,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_property FOREIGN KEY (property_id) REFERENCES Property(property_id),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES User(user_id)
)
PARTITION BY RANGE (start_date) (
    PARTITION p_2022 VALUES LESS THAN ('2023-01-01'),
    PARTITION p_2023 VALUES LESS THAN ('2024-01-01'),
    PARTITION p_2024 VALUES LESS THAN ('2025-01-01'),
    PARTITION p_future VALUES LESS THAN (MAXVALUE)
);

-- Example of selecting bookings in 2023 only (faster with partitions)
SELECT *
FROM Booking_Partitioned
WHERE start_date >= '2023-01-01' AND start_date < '2024-01-01';
