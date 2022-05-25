-- Create Customer Table
create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Create Concessions table
create table concessions (
	concessions_id SERIAL primary key,
	concessions_type NUMERIC(2),
	concessions_price NUMERIC(3,2)
);

-- Create movies table
create table movies (
	movie_id SERIAL primary key,
	movie_name VARCHAR(150),
	concessions_id INTEGER not null,
	foreign key(concessions_id) references concessions(concessions_id)
);

-- Create tickets table
create table tickets (
	ticket_id SERIAL primary key,
	ticket_price NUMERIC(2,2),
	date_ordered DATE default CURRENT_DATE,
	movie_id INTEGER not null,
	customer_id INTEGER not null,
	foreign key(movie_id) references movies(movie_id),
	foreign key(customer_id) references customer(customer_id)
);