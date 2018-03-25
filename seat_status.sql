create table seat_status(
	id number(3) CONSTRAINT id_pk PRIMARY kEY,
	flight_no references flight_details(flight_no),
	business_class number(5) check (business_class between 1 and 40 ),
	economy_class number(5) check (economy_class between  1 and 80),
	economy_class_price number(15) ,
	business_class_price number(15),
	total_seats number(3)
);

