# Task 0: SQL Advanced Joins — Airbnb Database

## Description

This file contains complex SQL join queries written as part of the ALX Airbnb database project. The goal is to practice and demonstrate understanding of different types of joins: INNER JOIN, LEFT JOIN, and FULL OUTER JOIN.

## Queries

### 1️⃣ INNER JOIN

- Retrieves all bookings along with the user details who made those bookings.
- Only returns records where there is a matching user for each booking.

### 2️⃣ LEFT JOIN

- Retrieves all properties along with their reviews.
- Includes properties that do not have any reviews (review columns will show as NULL).

### 3️⃣ FULL OUTER JOIN

- Retrieves all users and all bookings.
- Includes users without bookings and bookings not linked to a user.

## Files

- `joins_queries.sql`: Contains the SQL queries.

## Author

- Mihlali Ncayo




# Task 1: Practice Subqueries

## Objective

In this task, we practice using subqueries to analyze and filter Airbnb data. We learn two types of subqueries:

- **Non-correlated subqueries**: Can run independently of the outer query.
- **Correlated subqueries**: Depend on the outer query values and run repeatedly for each row processed by the outer query.

---

## 1️⃣ Non-Correlated Subquery: Properties with Average Rating Greater than 4.0

### What we want to achieve

We want to find all properties that have an average review rating higher than 4.0. This helps us highlight the best-performing properties in the Airbnb system.

### How it works

- We look at the `Review` table.
- We group reviews by `property_id` to get all reviews for each property.
- We calculate the average rating for each property using `AVG(rating)`.
- We filter these groups using `HAVING AVG(rating) > 4.0` so that only properties with high ratings remain.
- Finally, we select full details from the `Property` table for these `property_id`s.

### SQL Query

```sql
SELECT *
FROM Property
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

...

2️⃣ Correlated Subquery: Users with More Than 3 Bookings
What we want to achieve
We want to find all users who have made more than 3 bookings. This allows us to identify our most active and loyal users.

How it works
We start by selecting users from the User table.

For each user, we count how many bookings they have in the Booking table.

We do this by using a subquery that references the current user_id from the outer query (which is why it is "correlated").

We include a user only if their booking count is greater than 3.

SQL Query
sql
Copy
Edit
SELECT *
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.user_id
) > 3;

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
...