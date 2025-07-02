# Task 2: Aggregations and Window Functions

## Objective

In this task, we practice using SQL aggregation and window functions to analyze Airbnb data. We focus on counting grouped data and ranking results.

---

## 1️⃣ Total Number of Bookings per User

### What we want to achieve

We want to see how many bookings each user has made. This helps identify active users and track booking patterns.

### How it works

- We use `COUNT()` to count the number of bookings each user has.
- We join the `User` table and `Booking` table on `user_id`.
- We group by `user_id` (and user details) so we can count bookings per user.

### SQL Query

```sql
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id, u.first_name, u.last_name;
