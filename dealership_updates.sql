ALTER TABLE mechanic
ADD email VARCHAR(75),
ADD phone_number VARCHAR(25);

UPDATE mechanic 
SET email = 'Blue@CTcars.com'
WHERE mechanic_id = 1;

UPDATE mechanic 
SET	phone_number = '(773)123-3201'
WHERE mechanic_id = 1;

UPDATE mechanic 
SET email = 'Rumi@CTcars.com'
WHERE mechanic_id = 2;

UPDATE mechanic 
SET	phone_number = '(773)123-4287'
WHERE mechanic_id = 2;

UPDATE mechanic 
SET email = 'Sir@CTcars.com'
WHERE mechanic_id = 3;

UPDATE mechanic 
SET	phone_number = '(773)123-3582'
WHERE mechanic_id = 3;

UPDATE customer 
SET	phone_number = '(773)532-7392'
WHERE customer_id = 1;

UPDATE customer 
SET	address = '234 Carlisle Lane Chicago, IL 60615'
WHERE customer_id = 1;

UPDATE customer 
SET	phone_number = '(773)366-7210'
WHERE customer_id = 2;

UPDATE customer 
SET	address = '878 E 18th Street Chicago, IL 60612'
WHERE customer_id = 2;

UPDATE customer 
SET	phone_number = '(773)982-0182'
WHERE customer_id = 3;

UPDATE customer 
SET	address = '4827 Cottage Grove Chicago, IL 60639'
WHERE customer_id = 3;

ALTER TABLE service
ADD service_type VARCHAR(75);

UPDATE service
SET service_type = 'tire replacement'
WHERE service_id = 1;

UPDATE service
SET service_type = 'battery replacement'
WHERE service_id = 2;

UPDATE service
SET service_type = 'headlight replacement'
WHERE service_id = 3;

ALTER TABLE sale_invoice
RENAME TO invoice;

ALTER TABLE invoice
RENAME COLUMN sale_invoice_id TO invoice_id;

ALTER TABLE invoice
ADD subtotal NUMERIC(8,2);

ALTER TABLE invoice
ADD taxes NUMERIC(6,2);

UPDATE service_ticket
SET service_id = 1
WHERE service_ticket_id = 1;

UPDATE service_ticket
SET service_id = 2
WHERE service_ticket_id = 2;

UPDATE service_ticket
SET service_id = 3
WHERE service_ticket_id = 4;

ALTER TABLE parts
RENAME COLUMN price TO part_price;

ALTER TABLE service
RENAME COLUMN price TO labor_price;

ALTER TABLE service_ticket
DROP COLUMN total_cost;

ALTER TABLE invoice
DROP COLUMN total_cost;

ALTER TABLE invoice
ADD total_cost NUMERIC(8,2);

ALTER TABLE invoice
ADD service_ticket_id INTEGER;

ALTER TABLE invoice
ADD salesman_id INTEGER;

ALTER TABLE invoice
DROP COLUMN subtotal;

ALTER TABLE invoice
DROP COLUMN taxes;

ALTER TABLE invoice
DROP COLUMN total_cost;

ALTER TABLE invoice
ADD subtotal NUMERIC(8,2);

ALTER TABLE invoice
ADD taxes NUMERIC(8,2);

ALTER TABLE invoice
ADD total_cost NUMERIC(8,2);

ALTER TABLE customer
ADD payment_id INTEGER;

UPDATE customer
SET payment_id = 3
WHERE customer_id = 1;

UPDATE customer
SET payment_id = 2
WHERE customer_id = 2;

UPDATE customer
SET payment_id = 1
WHERE customer_id = 3;

UPDATE parts
SET service_ticket_id = 1 
WHERE part_id = 1;

UPDATE parts
SET service_ticket_id = 2 
WHERE part_id = 2;

UPDATE parts
SET service_ticket_id = 4 
WHERE part_id = 3;

UPDATE invoice
SET subtotal = 100.00
WHERE invoice_id = 1;

UPDATE invoice
SET subtotal = 300.00
WHERE invoice_id = 2;

UPDATE invoice
SET subtotal = 75.00
WHERE invoice_id = 3;

ALTER TABLE invoice
RENAME COLUMN subtotal TO invoice_subtotal;