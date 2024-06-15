UPDATE person
  SET valid_range = daterange(lower(valid_range), '1994-08-26')
  WHERE name = 'John Doe'
    AND upper_inf(valid_range)
;

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  daterange('1994-08-26', NULL)
);
