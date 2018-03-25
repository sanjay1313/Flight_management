declare
cursor fetch1(initial varchar2,final varchar2,day date) 
is 
select * from flight_details where origin=initial and destination=final and departure_date=day;
begin

dbms_output.put_line('flightno'||'     '||
	'flightname'||'   '||'origin'||'    '||'destination'||'   '||
	'departuredate'||'      '||'departuretime'||'       '||'arrivaltime'||'   '
	||'totaldistance'||'   '||'flightduration'||'      '||'status');

for x in fetch1('&origin','&destination','&departure_date')
loop
dbms_output.put_line(x.flight_no||'    '||'   '||
	x.flight_name||'   '||x.origin||'  '||x.destination||'         '||
	x.departure_date||'   	        '||x.departure_time||'  		    '||x.arrival_time||'   		  '
	||x.total_distance||' 	    '||x.flight_duration||'	   '||x.status);
end loop;
end;