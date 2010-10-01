Data Migration
==============
db2 "connect to dbair001 user db2inst1"
db2 -td# -vf export_airports.sql

Now load this data into the new database -

db2 "connect to airb_<env> user db2inst1" (where <env> is one of dev, tst or prd) 
db2 -td# -vf import_airports.sql

Now take a full export of this, including keys, to allow generation of AIRPORT_VISITS

db2 "connect to airb_<env> user db2inst1" (where <env> is one of dev, tst or prd) 
db2 -td# -vf export_new_airports.sql

And load this export back into the old database 

db2 "connect to dbair001 user db2inst1"
db2 -td# -vf create_airports.sql

Now extract the airport visits -

db2 "connect to dbair001 user db2inst1"
db2 -td# -vf export_airport_visits.sql

And load these into the new database -

db2 "connect to airb_<env> user db2inst1" (where <env> is one of dev, tst or prd) 
db2 -td# -vf import_airport_visits.sql

The following assumes that the three rows have been added to AIRCRAFT_STATUS on AIRB_<env> from the fixture file.

db2 "connect to airb_<env> user db2inst1" (where <env> is one of dev, tst or prd) 
db2 -td# -vf export_aircraft_statuses.sql
db2 "connect to dbair001 user db2inst1"
db2 "create table dbair001.aircraft_statuses (id integer, aircraft_Status char(1))"
db2 -td# -vf import_aircraft_statuses.sql

Now export aircraft for transfer to the new database -

db2 "connect to dbair001 user db2inst1"
db2 -td# -vf export_aircraft.sql

And load aircraft into new database -

db2 "connect to airb_<env> user db2inst1" (where <env> is one of dev, tst or prd) 
db2 -td# -vf load_aircraft.sql

Now reset identity columns -

db2 -td# -xf generate_identity_reset.sql >identity_reset.sql
db2 -td# -vf identity_reset.sql

Now export aircraft history -

db2 "connect to dbair001 user db2inst1"
db2 -td# -vf export_aircraft_history.sql
