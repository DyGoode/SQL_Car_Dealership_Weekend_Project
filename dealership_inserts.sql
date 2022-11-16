-- Just Dyonne --
-- W5 Weekened Project --
-- Inserts --


-- salesperson--
INSERT INTO "salesperson"(
    first_name,
    last_name,
    email,
    phone_number
)VALUES(
    'Beyonce',
    'Carter',
    'Beyonce@CTcars.com',
    '(773)123-4567'
);

INSERT INTO "salesperson"(
    first_name,
    last_name,
    email,
    phone_number
)VALUES(
    'Sean',
    'Carter',
    'Jay-Z@CTcars.com',
    '(773)123-8910'
);


--mechanic--
INSERT INTO "mechanic"(
    first_name,
    last_name
)VALUES(
    'Blue Ivy',
	'Carter'
);

INSERT INTO "mechanic"(
    first_name,
    last_name
)VALUES(
    'Rumi',
    'Carter'
);

INSERT INTO "mechanic"(
    first_name,
    last_name
)VALUES(
    'Sir',
    'Carter'
);


--customer--
INSERT INTO "customer"(
    first_name,
    last_name,
    email    
)VALUES(
    'Robyn',
    'Fenty',
    'RFenty@yahoo.com'
);

INSERT INTO "customer"(
    first_name,
    last_name,
    email   
)VALUES(
    'Onika',
    'Maraj',
    'OMaraj@gmail.com'
);

INSERT INTO "customer"(
    first_name,
    last_name,
    email    
)VALUES(
    'Belcalis',
    'Almanzar',
    'BAlmanzar@hotmail.com'
);


--car--
INSERT INTO "car"(
    "condition",
    "year",
    make,
    model,
    price,
    status
)VALUES(
    'new',
    2022,
    'Kia',
    'Telluride', 
    80000.00,
    'for sale'
);

INSERT INTO "car"(
    "condition",
    "year",
    make,
    model,
    status
)VALUES(
    'used',
    2010,
    'Chevy',
    'Equinox',
    'servicing'    
);

INSERT INTO "car"(
    "condition",
    "year",
    make,
    model,
    price,
    status
)VALUES(
    'used',
    2020,
    'Hyundai',
    'Sante Fe',
    22250.00,
    'for sale'
);

INSERT INTO "car"(
    "condition",
    "year",
    make,
    model,
    status
)VALUES(
    'used',
    2017,
    'Toyota',
    'Camry',
    'servicing'
);

INSERT INTO "car"(
    "condition",
    "year",
    make,
    model,
    price,
    status
)VALUES(
    'new',
    2022,
    'Volkswagen',
    'Jetta',
    27000.00,
    'for sale'
);

INSERT INTO "car"(
    "condition",
    "year",
    make,
    model,
    status
)VALUES(
    'used',
    2015,
    'Ford',
    'Fusion',
    'none'
);

INSERT INTO "car"(
    "condition",
    "year",
    make,
    model,
    price,
    status
)VALUES(
    'used',
    2017,
    'Nissan',
    'Rogue',
    18900.00,
    'for sale'
);


--payment--
INSERT INTO "payment"(
    bank,
    payment_method
)VALUES(
    'Chase',
    '6793 6406 2637 2716 12/23 900'
);

INSERT INTO "payment"(
    bank,
    loan_amount,
    down_payment,
    payment_method
)VALUES(
    'Bank of America',
    30000.00,
    6000.00,
    'Check'
);

INSERT INTO "payment"(
    bank,
    payment_method
)VALUES(
    'Wintrust',
    '2638 4943 8272 1637 02/25 637'   
);


--service ticket--
INSERT INTO "service_ticket"(
    "date",
    customer_id,
    mechanic_id,
    serial_no_id
)VALUES(
    '11-15-2022',
    '1',
    '1', 
    '2'
);

INSERT INTO "service_ticket"(
    "date",
    customer_id,
    mechanic_id,
    serial_no_id
)VALUES(
    '08-22-2020',
    '1',
    '2', 
    '6'
);

INSERT INTO "service_ticket"(
    "date",
    customer_id,
    mechanic_id,
    serial_no_id
)VALUES(
    '11-15-2022',
    '3',
    '3', 
    '4'
);


--parts--
INSERT INTO "parts"(
    price,
    quantity,
    part_type
)VALUES(
    50.00,
    1,
    'tire'
);

INSERT INTO "parts"(
    price,
    quantity,
    part_type
)VALUES(
    200.00,
    1,
    'battery'
);

INSERT INTO "parts"(
    price,
    quantity,
    part_type
)VALUES(
    25.00,
    1,
    'headlight'
);


--service--
INSERT INTO "service"(
    price,
    serial_no_id,
    part_id
)VALUES(
    50.00,
    '2',
    '1'
);

INSERT INTO "service"(
    price,
    serial_no_id,
    part_id
)VALUES(
    100.00,
    '6',
    '2'
);

INSERT INTO "service"(
    price,
    serial_no_id,
    part_id
)VALUES(
    50.00,
    '4',
    '3'
);


--service history--
INSERT INTO "service_history"(
  customer_id,
  serial_no_id,
  service_ticket_id
)VALUES(
  1,
  2,
  1
);

INSERT INTO "service_history"(
  customer_id,
  serial_no_id,
  service_ticket_id
)VALUES(
  1,
  6,
  2
);

INSERT INTO "service_history"(
  customer_id,
  serial_no_id,
  service_ticket_id
)VALUES(
  3,
  4,
  4
);


--invoice--
INSERT INTO "invoice"(
  serial_no_id,
  customer_id,
  payment_id,
  service_ticket_id
)VALUES(
  2,
  1,
  3,
  1
);

INSERT INTO "invoice"(
  serial_no_id,
  customer_id,
  payment_id,
  service_ticket_id
)VALUES(
  6,
  1,
  3,
  2  
);

INSERT INTO "invoice"(
  serial_no_id,
  customer_id,
  payment_id,
  service_ticket_id
)VALUES(
  4,
  3,
  1,
  4  
);
