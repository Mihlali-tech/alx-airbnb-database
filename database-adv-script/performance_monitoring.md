# Performance Monitoring Report

## Objective

Analyze and monitor query performance using EXPLAIN and identify improvements.

---

## What we did

- Ran `EXPLAIN` on complex join queries between Booking, User, and Property.
- Observed initial full table scans and high cost due to lack of indexes and large dataset.

---

## Changes Implemented

- Added indexes on:
  - `Booking.user_id`
  - `Booking.property_id`
  - `Booking.start_date`
- Implemented table partitioning on `Booking` by `start_date`.

---

## Results

- Execution cost reduced significantly.
- Scanned rows drastically reduced according to `EXPLAIN` output.
- Queries now use indexes and relevant partitions, making them faster and more efficient.

---

## Conclusion

Continuous monitoring using EXPLAIN helps find slow queries and bottlenecks.  
Adding appropriate indexes and partitions leads to faster execution and better database scalability.

---
