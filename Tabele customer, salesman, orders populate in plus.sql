drop table if exists orders;
drop table if exists customer;
drop table if exists salesman;

create table salesman(
	salesman_id int primary key not null,
	name varchar (128) not null,
	city varchar (100) not null,
	comission decimal (3,2) not null);
go
insert into salesman(salesman_id,name, city, comission) values (5001, 'James Hoog', 'New York', 0.15);
insert into salesman(salesman_id,name, city, comission) values (5002, 'Nail Knite', 'Paris', 0.13);
insert into salesman(salesman_id,name, city, comission) values (5005, 'Pit Alex', 'London', 0.11);
insert into salesman(salesman_id,name, city, comission) values (5006, 'Mc Lyon ', 'Paris', 0.14);
insert into salesman(salesman_id,name, city, comission) values (5007, 'Paul Adam', 'Rome', 0.13);
insert into salesman(salesman_id,name, city, comission) values (5003, 'Lauson Hen', 'San Jose', 0.12);
insert into salesman(salesman_id,name, city, comission) values (5004, 'John Davis', 'Alabama', 0.15);
insert into salesman(salesman_id,name, city, comission) values (5008, 'Eric Dawson', 'Madrid', 0.18);
go

create table customer(
	customer_id int primary key not null,
	cust_name varchar (100) not null,
	city varchar (100) not null,
	grade int null,
	salesman_id int references salesman(salesman_id) not null);
go

create table orders(
	ord_no int primary key not null,
	purch_amt decimal (20,2) not null,
	ord_date date not null,
	customer_id int references customer(customer_id) not null,
	salesman_id int);
go

insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3002, 'Nick Rimando', 'New York', 100, 5001);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3007, 'Brad Davis', 'New York', 200, 5001);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3005, 'Graham Zusi', 'California', 200, 5002);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3008, 'Julian Green', 'London', 300, 5002);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3004, 'Fabian Johnson', 'Paris', 300, 5006);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3009, 'Geoff Cameron', 'Berlin', 100, 5003);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3003, 'Jozy Altidor', 'Moscow', 200, 5007);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3001, 'Brad Guzan','London', null, 5005);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3006, 'Julio Bazar', 'Lisabona', NULL, 5001);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3010, 'Guillame Anton', 'Lille', 200, 5006);
insert into customer(customer_id, cust_name, city, grade, salesman_id) values (3011, 'Andreas Torino', 'Venece', 100, 5004);


insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70001, 150.5, '2012-10-05', 3005, 5002);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70009, 270.65, '2012-09-10', 3001, 5005);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70002, 65.26, '2012-10-05', 3002, 5001);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70004, 110.5, '2012-08-17', 3009, 5003);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70007, 948.5, '2012-09-10', 3005, 5002);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70005, 2400.6, '2012-07-27', 3007, 5001);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70008, 5760, '2012-09-10', 3002, 5001);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70010, 1983.43, '2012-10-10' , 3004, 5006);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70003, 2480.4, '2012-10-10' , 3009, 5003);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70012, 250.45, '2012-06-27', 3008, 5002);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70011, 75.29, '2012-08-17', 3003, 5007);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70013, 3045.6,'2012-04-25', 3002, 5001);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70006, 168.5, '2012-09-05', 3002, NULL);
insert into orders(ord_no, purch_amt, ord_date, customer_id, salesman_id) values (70014, 2560.5, '2012-10-08', 3008, NULL);