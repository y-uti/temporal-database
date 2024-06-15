SET @@timestamp = unix_timestamp('2001-04-01');

DELETE FROM person
  FOR PORTION OF valid_period FROM '2001-04-01' TO '9999-12-31'
  WHERE name = 'John Doe'
;
