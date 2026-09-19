# Hotel Aurora — Database Design & Development

> **Status: Complete.** A relational database design assignment.

A relational database schema designed for a hotel reservation system, covering customer loyalty tiers, staff roles, room categories, reservations, and add-on services — implemented in full SQL with seed data.

## Entities

13 tables, modelled from the ERD in `docs/erd.jpg`:

| Table | Purpose |
|---|---|
| `Customer` | Guest records |
| `CustomerLevel` | Loyalty tiers — Diamond, Gold, Platinum, Silver, Bronze, each with a discount rate |
| `Employee` | Staff records |
| `EmployeePosition` | Roles (Manager, Assistant Manager, Supervisor, Receptionist, Concierge) with hourly pay |
| `Reservation` | Booking records |
| `ReservationType` | Booking channel — in-person, phone, chat box, agent, email |
| `Room` | Room inventory |
| `RoomCategory` | Room tiers |
| `Room_Reservation` | Junction table linking rooms to reservations |
| `Service` | Add-on services (e.g. spa, dining) |
| `Category_Service` | Junction table linking services to room categories |
| `Invoice` | Billing records |
| `PaymentType` | Payment method |

Full relationships are shown in `docs/erd.jpg`.

## Project structure

```
hotel-aurora/
├── database/
│   └── hotel_aurora_schema.sql   # Schema + seed data
└── docs/
    └── erd.jpg                    # Entity relationship diagram
```

## Setup

```
mysql -u root -p < database/hotel_aurora_schema.sql
```

This creates the `hotel_aurora_db` database with all 13 tables and sample data (customer tiers, employee positions, reservation types, payment types).

## Notes

This was an academic database design exercise — schema and seed data only, no application layer.

## Author

April Soe Naing — [aprilsoenaing.786@gmail.com](mailto:aprilsoenaing.786@gmail.com)
