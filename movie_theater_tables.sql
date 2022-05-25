insert into customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
) values (
	1,
	'Connor',
	'Folsom',
	'23334 22 Something Dr',
	'1234-4321-1234-3322 554'
);

insert into concessions (
	concessions_id,
	concessions_type,
	concessions_price
) values (
	1,
	21,
	0
);

insert into movies (
	movie_id,
	movie_name,
	concessions_id
) values (
	1,
	'Coding Temple',
	1
);

insert into tickets (
	ticket_id,
	ticket_price,
	movie_id,
	customer_id 
) values (
	1,
	0,
	1,
	1
);

select * from tickets