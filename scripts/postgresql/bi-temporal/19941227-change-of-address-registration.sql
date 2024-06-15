UPDATE person
  SET transaction_range = daterange(lower(transaction_range), '1994-12-27')
  WHERE name = 'John Doe'
    AND upper_inf(valid_range)
    AND upper_inf(transaction_range)
;

INSERT INTO person VALUES (
  'John Doe',
  'Smallville',
  daterange('1975-04-03', '1994-08-26'),
  daterange('1994-12-27', NULL)
);

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  daterange('1994-08-26', NULL),
  daterange('1994-12-27', NULL)
);
