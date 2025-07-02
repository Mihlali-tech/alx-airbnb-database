# Query Optimization Report

## Objective

Optimize a complex query that retrieves bookings along with user, property, and payment details.

---

## Initial Query

We wrote an initial query to join `Booking`, `User`, `Property`, and `Payment` tables. While it was functionally correct, it retrieved all bookings, including canceled or pending ones, and included many columns.

---

## Issues Identified

- Fetched all statuses, including unnecessary bookings.
- Retrieved more columns than required for most business reports.
- Potential performance issues if no indexes on `user_id`, `property_id`, or `booking_id`.

---

## Changes Made

- Added `WHERE b.status = 'confirmed'` to focus on active bookings.
- Selected only essential columns to reduce data transfer and improve clarity.
- Confirmed that indexes on `user_id`, `property_id`, and `booking_id` were present to support efficient joins.

---

## Result

- Query cost reduced.
- Improved execution time (verified using EXPLAIN).
- Reduced data fetched, which is better for application performance.

---

## Conclusion

Optimizing complex queries involves careful review of joins, filtering data early, and ensuring correct indexes are used. These improvements lead to faster and more scalable applications.
