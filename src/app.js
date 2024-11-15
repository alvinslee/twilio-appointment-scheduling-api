import express from 'express';
import db from './db.js';
const { query } = db;
const app = express();

app.use(express.json());

// GET /appointment?id=<appointment_id>
app.get('/appointment', async (req, res) => {
  const { id } = req.query;
  if (!id) return res.status(400).json({ error: 'Appointment ID is required' });

  try {
    const appointments = await query(
      `SELECT a.id as appointment_id, a.note, c.id as customer_id, c.first_name, c.last_name, c.email, c.phone, t.date, t.start_time, t.end_time
       FROM appointments a
       JOIN customers c ON a.customer_id = c.id
       JOIN time_slots t ON a.time_slot_id = t.id
       WHERE a.id = $1`, [id]
    );

    if (appointments.length === 0) return res.status(404).json({ error: 'Appointment not found' });

    const appointment = appointments[0];
    res.json({
      customer: {
        id: appointment.customer_id,
        firstName: appointment.first_name,
        lastName: appointment.last_name,
        email: appointment.email,
        phone: appointment.phone,
      },
      appointment: {
        id: appointment.appointment_id,
        note: appointment.note,
        date: (new Date(appointment.date)).toDateString(),
        startTime: appointment.start_time,
        endTime: appointment.end_time,
      },
    });
  } catch (error) {
    res.status(500).json({ error });
  }
});

// GET /next-appointment?phone=<phone_number>
app.get('/next-appointment', async (req, res) => {
  const { phone } = req.query;

  if (!phone) {
    return res.status(400).json({ error: 'Phone number is required' });
  }

  try {
    // Find the customer by phone number
    const customerRows = await query(`SELECT id, first_name, last_name, email, phone FROM customers WHERE phone = $1`, [phone]);
    if (customerRows.length === 0) {
      return res.status(404).json({ error: 'Customer not found' });
    }
    const customer = customerRows[0];

    // Find the next appointment for the customer
    const nextAppointment = await query(
      `SELECT a.id AS appointment_id, a.note, t.date, t.start_time, t.end_time
       FROM appointments a
       JOIN time_slots t ON a.time_slot_id = t.id
       WHERE a.customer_id = $1
       AND (t.date > CURRENT_DATE OR (t.date = CURRENT_DATE AND t.end_time > CURRENT_TIME))
       ORDER BY t.date, t.start_time
       LIMIT 1`,
      [customer.id]
    );

    if (nextAppointment.length === 0) {
      return res.status(404).json({ error: 'No upcoming appointments found for this customer' });
    }

    // Return the appointment information
    const appointment = nextAppointment[0];
    res.json({
      customer: {
        id: customer.id,
        firstName: customer.first_name,
        lastName: customer.last_name,
        email: customer.email,
        phone: customer.phone,
      },
      appointment: {
        id: appointment.appointment_id,
        note: appointment.note,
        date: (new Date(appointment.date)).toDateString(),
        startTime: appointment.start_time,
        endTime: appointment.end_time
      }
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ error });
  }
});

// GET /available?date=<date>
app.get('/available', async (req, res) => {
  const { date } = req.query;
  if (!date) return res.status(400).json({ error: 'Date is required' });

  try {
    const availableSlots = await query(
      `SELECT t.id, t.date, t.start_time, t.end_time
       FROM time_slots t
       LEFT JOIN appointments a ON t.id = a.time_slot_id
       WHERE t.date BETWEEN $1::date - INTERVAL '1 day' AND $1::date + INTERVAL '1 day'
       AND a.id IS NULL
       AND (t.date > CURRENT_DATE OR (t.date = CURRENT_DATE AND t.end_time > CURRENT_TIME))
       ORDER BY t.date, t.start_time, t.end_time`, 
      [date]
    );

    res.json(
      availableSlots.map(slot => ({
        id: slot.id,
        date: (new Date(slot.date)).toDateString(),
        startTime: slot.start_time,
        endTime: slot.end_time,
      }))
    );
  } catch (error) {
    res.status(500).json({ error });
  }
});

// POST /appointment
app.post('/appointment', async (req, res) => {
  const { customer_id, time_slot_id, note } = req.body;
  console.log(req.body);
  if (!customer_id || !time_slot_id) return res.status(400).json({ error: 'Customer ID and Time Slot ID are required' });

  try {
    const rows = await query(
      `INSERT INTO appointments (id, customer_id, time_slot_id, note)
       VALUES (nextval('appointments_id_seq'), $1, $2, $3) RETURNING id`, [customer_id, time_slot_id, note || '']
    );
    res.status(201).json({ message: `Appointment with ID ${rows[0]['id']} created successfully` });
  } catch (error) {
    res.status(500).json({ error });
  }
});

// POST /appointment/delete
app.post('/appointment/delete', async (req, res) => {
  const { id } = req.body;
  if (!id) return res.status(400).json({ error: 'Appointment ID is required' });

  try {
    await query(`DELETE FROM appointments WHERE id = $1`, [id]);
    res.json({ message: 'Appointment deleted successfully' });
  } catch (error) {
    res.status(500).json({ error: 'Internal server error' });
  }
});

export default app;
