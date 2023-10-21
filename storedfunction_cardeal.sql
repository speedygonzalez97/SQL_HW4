





CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _phone_number VARCHAR, _address VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id,first_name,last_name,phone_number,address)
	VALUES(_customer_id, _first_name, _last_name, _phone_number,_address);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_customer(4,'Brett', 'Harris', '545-2323-2311', '344 Maple Ave 2Fl NY, New York');
SELECT add_customer(5,'Joanna', 'Gomez', '634-2092-7913', '10 Colden St 1Fl NY, New York');



DROP FUNCTION add_customer;







CREATE OR REPLACE FUNCTION add_cars(_car_id INTEGER, _color VARCHAR, _make VARCHAR, _model VARCHAR, _year_origin INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO cars(car_id, color, make, model, year_origin)
	values(_car_id,_color, _make, _model, _year_origin);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_cars(4,'Gray','Toyota', 'HRV', 2020);
SELECT add_cars(5,'Brown','Toyota', 'CHR', 2019);



DROP FUNCTION add_cars;






CREATE OR REPLACE FUNCTION add_salesperson(_rep_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _phone_number VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO salesperson(rep_id,first_name , last_name , phone_number)
	values(_rep_id, _first_name , _last_name , _phone_number);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_salesperson(4,'Miguel', 'Cruz', '646-232-1212');


DROP FUNCTION add_salesperson;






CREATE OR REPLACE FUNCTION add_service(_ticket_id INTEGER, _parts_amount INTEGER, _non_parts_amount INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service(ticket_id,parts_amount, non_parts_amount)
	values(_ticket_id, _parts_amount, _non_parts_amount);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_service(4, 7, 1);



DROP FUNCTION add_service;






CREATE OR REPLACE FUNCTION add_mechanics(_mechanic_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO mechanics(mechanic_id,first_name , last_name)
	values(_mechanic_id, _first_name, _last_name);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_mechanics(4,'Devin', 'Brown');


DROP FUNCTION add_mechanics;







CREATE OR REPLACE FUNCTION add_sales_invoice(_invoice_id INTEGER, _amount NUMERIC, _sales_date Date, _customer_id INTEGER, _rep_id INTEGER, _car_id INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO sales_invoice(invoice_id,amount,sales_date,customer_id, rep_id, car_id)
	values(_invoice_id,_amount,_sales_date,_customer_id, _rep_id, _car_id);
END;
$MAIN$
LANGUAGE plpgsql;


SELECT add_sales_invoice(4,15000.00, '2021-01-23', 4, 3, 3);
SELECT add_sales_invoice(5,20000.00, '2022-12-07', 5, 4, 5);


DROP FUNCTION add_sales_invoice;







CREATE OR REPLACE FUNCTION add_service_records(_serial_id INTEGER, _amount NUMERIC, service_date_ DATE, _car_id INTEGER, _customer_id INTEGER, _mechanic_id INTEGER, _ticket_id INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO service_records(serial_id, amount, service_date, car_id, customer_id, mechanic_id, ticket_id)
	values(_serial_id,_amount, service_date_, _car_id, _customer_id, _mechanic_id, _ticket_id);
END;
$MAIN$
LANGUAGE plpgsql;



DROP FUNCTION add_service_records;











