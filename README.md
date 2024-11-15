# Scheduling API

This project represents a basic scheduling API with a few endpoints:

* GET `/appointment?id=[appointment-id]` retrieves details for an appointment with a given ID
* GET `/available?date=[YYYY-MM-DD]` retrieves available time slots +/- 1 day of the date given
* POST `/appointment` with payload `customer_id`,  `time_slot_id`, and `note` to create an appointment for that time slot
* POST `/appointment/delete` with payload `id` to delete the appointment with the given ID

To setup the postgres database, run the SQL statements for the two files in the `data` folder, in this word:

1. `create_schema.sql` to create the three tables (customers, time_slots, appointments) and indexes.
2. `insert_data.sql` to insert dummy data
