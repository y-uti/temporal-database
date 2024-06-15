SET @@timestamp = unix_timestamp('2001-02-02');

UPDATE person
  FOR PORTION OF valid_period FROM '1995-06-01' TO '2000-09-03'
  SET address = 'Beachy'
  WHERE name = 'John Doe'
;
