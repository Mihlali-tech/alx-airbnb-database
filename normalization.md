# Airbnb Database - Normalization

## First Normal Form (1NF)

- All attributes are atomic (e.g., no multiple values in one field).
- Each row is uniquely identified by a primary key.

## Second Normal Form (2NF)

- The database already satisfies 1NF.
- There are no partial dependencies because all non-key attributes fully depend on the whole primary key.

## Third Normal Form (3NF)

- There are no transitive dependencies.
- Non-key attributes only depend on primary keys (e.g., a property’s details depend only on property_id).

## Conclusion

- The current design is in 3NF.
- No redundant data or derived columns.
- The schema supports data integrity and avoids anomalies.

---
