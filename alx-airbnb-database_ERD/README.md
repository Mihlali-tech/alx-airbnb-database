# ER Diagram and Requirements

This folder contains the Entity-Relationship Diagram (ERD) and related requirements for the ALX Airbnb database project.

## Contents

- `requirements.md`: Database specification detailing entities, attributes, and constraints.
- `airbnb_erd.drawio` (or `.png`, `.svg`): Visual ER diagram illustrating entities and relationships.

## Overview

The ER diagram models the following entities and their relationships based on the project specification:

- **User**: Guests, Hosts, and Admins with user-specific attributes.
- **Property**: Listings associated with hosts.
- **Booking**: Reservations made by users on properties.
- **Payment**: Payment details linked to bookings.
- **Review**: User reviews of properties.
- **Message**: Communication between users.

## Relationships

- One User (Host) can have multiple Properties.
- Users (Guests) can have multiple Bookings.
- Each Booking is associated with one Property.
- Payments are linked to Bookings.
- Reviews are connected to Users and Properties.
- Messages are exchanged between Users.

---

*This README serves as documentation for understanding the ER model and the requirements that guided its creation.*
