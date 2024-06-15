UPDATE person
  SET transaction_range = daterange(lower(transaction_range), '2001-02-02')
  WHERE name = 'John Doe'
    AND upper_inf(valid_range)
    AND upper_inf(transaction_range)
;

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  daterange('1994-08-26', '1995-06-01'),
  daterange('2001-02-02', NULL)
);

INSERT INTO person VALUES (
  'John Doe',
  'Beachy',
  daterange('1995-06-01', '2000-09-03'),
  daterange('2001-02-02', NULL)
);

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  daterange('2000-09-03', NULL),
  daterange('2001-02-02', NULL)
);
