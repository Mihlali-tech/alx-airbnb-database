# Index Performance Report

## Objective

The goal is to improve query performance by creating indexes on columns that are frequently used in WHERE clauses, JOIN conditions, and sorting.

---

## What we did

### User Table

- Added an index on `email` since it is often queried to find users or used in authentication.

### Booking Table

- Added an index on `user_id` for fast lookup of bookings by user.
- Added an index on `property_id` to quickly find bookings related to a property.
- Added an index on `start_date` to improve performance for date range queries (e.g., finding future or past bookings).

### Property Table

- Added an index on `location` to support queries filtering by city or area.

---

## Performance Testing

We used `EXPLAIN` to analyze queries before and after creating indexes.  

- **Before indexes**: Queries with WHERE clauses on `user_id`, `property_id`, or `start_date` had higher cost and longer execution time.  
- **After indexes**: These queries showed lower cost and significantly faster execution times.

---

## Conclusion

Adding indexes on frequently filtered or joined columns greatly improves database performance, especially for large tables with many rows. This makes data retrieval more efficient and scalable.

---
