
create table customer (
	customer_id INTEGER not null primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number VARCHAR(15),
	address VARCHAR(100)
	);

													

create table cars (
	car_id Integer not null primary key,
	color VARCHAR(50),
	make VARCHAR(50),
	model VARCHAR(50),
	year_origin INTEGER not null
);
																				

create table salesperson (
	rep_id INTEGER not null primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_number VARCHAR(15)
);


create table service (
	ticket_id INTEGER not null primary key,
	parts_amount INTEGER not null,
	non_parts_amount INTEGER	
);


create table mechanics (
	mechanic_id INTEGER not null primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
	
);


create table sales_invoice (
	invoice_id INTEGER not null primary key,
	amount NUMERIC(8,2) not null,
	sales_date Date not null,
	customer_id INTEGER not null,
	rep_id INTEGER not null,
	car_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(rep_id) references salesperson(rep_id),
	foreign key(car_id) references cars(car_id)
);


create table service_records (
	serial_id INTEGER not null primary key,
	amount NUMERIC(8,2) not null,
	service_date Date not null,
	car_id INTEGER not null,
	customer_id INTEGER not null,
	mechanic_id INTEGER not null,
	ticket_id INTEGER not null,
	foreign key(car_id) references cars(car_id),
	foreign key(customer_id) references customer(customer_id),
	foreign key(mechanic_id) references mechanics(mechanic_id),
	foreign key(ticket_id) references service(ticket_id)
);






