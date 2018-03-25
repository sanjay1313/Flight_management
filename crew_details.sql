create table crew_details(
	crew_id varchar2(5),
	crew_name varchar2(10) not null,
	gender varchar2(4) check(gender IN('male','female','m','f')),
	job varchar2(20) not null,
	hiredate date not null,
	sal number(10) not null,
	comm number(5) not null,
	CONSTRAINT crew_id_pk PRIMARY KEY (crew_id)
)