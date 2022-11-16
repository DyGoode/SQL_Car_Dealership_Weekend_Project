-- Just Dyonne --
-- W5 Weekened Project --
-- Functions --


--Function for taxes--
CREATE OR REPLACE PROCEDURE addTax(
	invoice_id INTEGER,
	subtotal NUMERIC
)
AS
$$
BEGIN
	UPDATE invoice
	SET taxes = (subtotal * 0.10)
	WHERE invoice.invoice_subtotal = subtotal;
	
	
	COMMIT;
END;
$$
LANGUAGE plpgsql


CALL addTax(1, 100.00);
CALL addTax(2, 300.00);
CALL addTax(3, 75.00);


--Function for total_cost--
CREATE OR REPLACE PROCEDURE sumFunds(
	invoice_id_ INTEGER
)
AS
$$
BEGIN
	UPDATE invoice
	SET total_cost = invoice.invoice_subtotal + invoice.taxes
	WHERE invoice.invoice_id = invoice_id_;
	
	
	COMMIT;
END;
$$
LANGUAGE plpgsql

CALL sumFunds(1);
CALL sumFunds(2);
CALL sumFunds(3);
