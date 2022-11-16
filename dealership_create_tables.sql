-- ERD Created with Aften, Teddie & Dyonne --
-- W5 Weekened Project --
-- Creates Tables --

CREATE TABLE "salesperson" (
  "salesman_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(25),
  "last_name" VARCHAR(50),
  "email" VARCHAR(75),
  "phone_number" VARCHAR(25)
);

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50)
);

CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(25),
  "last_name" VARCHAR(50),
  "email" VARCHAR(75),
  "address" VARCHAR(50),
  "phone_number" VARCHAR(25)
);

CREATE TABLE "car" (
  "serial_no_id" SERIAL PRIMARY KEY,
  "condition" VARCHAR(50),
  "year" INTEGER,
  "make" VARCHAR(50),
  "model" VARCHAR(50),
  "price" NUMERIC(8,2),
  "status" VARCHAR(50)
);

CREATE TABLE "payment" (
  "payment_id" SERIAL PRIMARY KEY,
  "bank" VARCHAR(50),
  "loan_amount" NUMERIC(8,2),
  "down_payment" NUMERIC(8,2),
  "payment_method" VARCHAR(50)
);

CREATE TABLE "service_ticket" (
  "service_ticket_id" SERIAL PRIMARY KEY,
  "date" VARCHAR(50),
  "total_cost" NUMERIC(8,2),
  "customer_id" INTEGER,
  "mechanic_id" INTEGER,
  "service_id" INTEGER,
  "serial_no_id" INTEGER,
  FOREIGN KEY ("customer_id")REFERENCES "customer"("customer_id"),
  FOREIGN KEY ("mechanic_id") REFERENCES "mechanic"("mechanic_id"),
  FOREIGN KEY ("serial_no_id") REFERENCES "car"("serial_no_id")
);

CREATE TABLE "parts" (
  "part_id" SERIAL PRIMARY KEY,
  "price" NUMERIC(8,2),
  "quantity" INTEGER,
  "part_type" VARCHAR(50),
  "service_ticket_id" INTEGER,
  FOREIGN KEY("service_ticket_id") REFERENCES "service_ticket"("service_ticket_id")
);

CREATE TABLE "service" (
  "service_id" SERIAL PRIMARY KEY,
  "price" NUMERIC(8,2),
  "serial_no_id" INTEGER,
  "part_id" INTEGER,
  FOREIGN KEY ("serial_no_id") REFERENCES "car"("serial_no_id"),
  FOREIGN KEY ("part_id") REFERENCES "parts"("part_id")
);

CREATE TABLE "sale_invoice" (
  "sale_invoice_id" SERIAL PRIMARY KEY,
  "total_cost" NUMERIC(8,2),
  "serial_no_id" INTEGER,
  "customer_id" INTEGER,
  "payment_id" INTEGER,
  FOREIGN KEY ("serial_no_id") REFERENCES "car"("serial_no_id"),
  FOREIGN KEY ("customer_id")REFERENCES "customer"("customer_id"),
  FOREIGN KEY ("payment_id") REFERENCES "payment"("payment_id")
);

CREATE TABLE "service_history" (
  "service_history_id" SERIAL PRIMARY KEY,
  "customer_id" INTEGER,
  "serial_no_id" INTEGER,
  "service_ticket_id" INTEGER,
  FOREIGN KEY ("customer_id")REFERENCES "customer"("customer_id"),
  FOREIGN KEY ("serial_no_id") REFERENCES "car"("serial_no_id"),
  FOREIGN KEY ("service_ticket_id") REFERENCES "service_ticket"("service_ticket_id")
);