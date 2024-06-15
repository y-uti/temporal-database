SET @@timestamp = unix_timestamp('1994-12-27');

UPDATE person
  FOR PORTION OF valid_period FROM '1994-08-26' TO '9999-12-31'
  SET address = 'Bigtown'
  WHERE name = 'John Doe'
;
