create table flight_details
	(
		flight_no varchar2(10),
		flight_name varchar2(15) not null,
		origin varchar2(15) default 'AMRITSAR' not null,
		destination varchar2(15) not null,
		departure_date date,
		departure_time timestamp,
		arrival_time timestamp,
		total_distance varchar2(8) not null,
		flight_duration timestamp,
		status varchar2(10) not null,
		constraint flight_pk primary key(flight_no)
		);