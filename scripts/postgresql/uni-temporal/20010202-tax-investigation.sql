UPDATE person
  SET valid_range = daterange(lower(valid_range), '1995-06-01')
  WHERE name = 'John Doe'
    AND upper_inf(valid_range)
;

INSERT INTO person VALUES (
  'John Doe',
  'Beachy',
  daterange('1995-06-01', '2000-09-03')
);

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  daterange('2000-09-03', NULL)
);
