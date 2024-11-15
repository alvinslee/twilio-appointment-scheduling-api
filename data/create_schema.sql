CREATE TABLE appointments (
    id integer NOT NULL,
    customer_id integer NOT NULL,
    time_slot_id integer NOT NULL,
    note text
);

CREATE SEQUENCE appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE customers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(20) NOT NULL
);


CREATE SEQUENCE customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE time_slots (
    id integer NOT NULL,
    date date NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    CONSTRAINT valid_time_slot CHECK ((start_time < end_time))
);

CREATE SEQUENCE time_slots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE ONLY appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (id);

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);

ALTER TABLE ONLY time_slots
    ADD CONSTRAINT time_slots_pkey PRIMARY KEY (id);
