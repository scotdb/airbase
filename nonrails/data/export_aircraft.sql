export to aircraft.del of del
select
a.aircraft_id as id,
a.aircraft_type,
a.constructors_number,
case    
   when a.line_number = 0 then null
   else a.line_number
end as line_number,
b.id as aircraft_status_id
from
dbair001.t1000aircraft a
inner join
dbair001.aircraft_statuses b
on
a.aircraft_status = b.aircraft_status
#

