UPDATE person
  SET transaction_range = daterange(lower(transaction_range), '2001-04-01')
  WHERE name = 'John Doe'
    AND upper_inf(valid_range)
    AND upper_inf(transaction_range)
;

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  daterange('2000-09-03', '2001-04-01'),
  daterange('2001-04-01', NULL)
);
