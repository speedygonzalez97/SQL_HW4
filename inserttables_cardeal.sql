


insert into customer (customer_id, first_name, last_name, phone_number, address)
values
(1, 'Bryan', 'Gonzalez', '123-345-6789', '101 1st Street 1Fl NY, New York'),
(2, 'Mike', 'Fuentes', '143-365-2780', '201 2st Street 1Fl NY, New York'),
(3, 'Lorenzo', 'Thomas', '153-398-6129', '301 3st Street 6Fl NY, New York');




insert into cars (car_id, color, make, model, year_origin)
values
(1, 'White', 'Toyota', 'CHR', 2021),
(2, 'Red', 'Toyota', 'SUV', 2022),
(3, 'Red', 'Toyota', 'Prius', 2023);




insert into salesperson (rep_id, first_name, last_name, phone_number)
values
(1, 'Chris', 'Vasconez', '234-845-2924'),
(2, 'David', 'Walker', '984-232-4322'),
(3, 'Larry', 'James', '093-994-2893');




insert into service (ticket_id, parts_amount, non_parts_amount)
values
(1, 4, 2),
(2, 3, 0),
(3, 0, 3);




insert into mechanics (mechanic_id, first_name, last_name)
values
(1, 'Harry', 'Smith'),
(2, 'John', 'Spinelli'),
(3, 'Samuel', 'Larossa');




insert into sales_invoice (invoice_id, amount, sales_date, customer_id, rep_id, car_id)
values
(1, 20000.00, '2021-05-27', 1, 1, 1),
(2, 25000.00, '2022-03-09', 2, 2, 2),
(3, 30000.00, '2023-10-10', 3, 3, 3);





insert into service_records (serial_id, amount, service_date, car_id, customer_id, mechanic_id, ticket_id)
values
(1, 500.50, '2021-11-15', 1, 1, 1, 1),
(2, 200.20, '2022-10-13', 2, 2, 2, 2),
(3, 300.79, '2024-04-28', 3, 3, 3, 3);





