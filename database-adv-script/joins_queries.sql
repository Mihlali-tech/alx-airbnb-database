--a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;

-- a query using aLEFT JOIN to retrieve all properties and their reviews, including properties that have no reviews.
SELECT 
    p.property_id,
    p.name,
    p.description,
    p.location,
    p.pricepernight,
    r.review_id,
    r.user_id,
    r.rating,
    r.comment,
    r.created_at
FROM Property p
LEFT JOIN Review r ON p.property_id = r.property_id
ORDER BY p.property_id, r.rating DESC;


--a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM User u
FULL OUTER JOIN Booking b ON u.user_id = b.user_id;
