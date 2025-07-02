# Partition Performance Report

## Objective

Optimize queries on large Booking table by implementing table partitioning based on `start_date`.

---

## What we did

- Created a new `Booking_Partitioned` table using range partitioning on `start_date`.
- Defined partitions for different years: before 2023, 2023, 2024, and future dates.

---

## Performance Testing

- Queries filtering by date range (e.g., all bookings for 2023) executed significantly faster.
- EXPLAIN plans showed that only the relevant partition was scanned instead of the entire table.

---

## Conclusion

Partitioning helps improve performance for time-based queries on large datasets.  
It reduces scan time, improves efficiency, and is highly recommended for tables expected to grow over time.

---
