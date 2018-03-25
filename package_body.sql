create or replace package body main
	as

	procedure sal_incr(id_no crew_details.crew_id%type,par number)
	is
	c_sal crew_details.sal%type;
	begin
	update crew_details set sal=sal+sal*(par/100) where crew_id=id_no;
		select sal into c_sal from crew_details where crew_id=id_no;
		dbms_output.put_line('Crew_id :: '||id_no||' Salary :: '||c_sal);
	end sal_incr;

	

end main;



