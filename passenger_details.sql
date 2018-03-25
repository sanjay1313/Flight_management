create table passenger_details(
	flight_no varchar2(10) references flight_details(flight_no),
	passenger_name varchar2(15) not null,
	email varchar2(20) not null,
	phone number(10) not null,
	gender varchar2(4) check(gender IN('male','female','m','f')),
	booking_date date
);