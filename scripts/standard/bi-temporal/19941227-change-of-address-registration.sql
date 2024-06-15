UPDATE person
  SET transaction_to = '1994-12-27'
  WHERE name = 'John Doe'
    AND valid_to IS NULL
    AND transaction_to IS NULL
;

INSERT INTO person VALUES (
  'John Doe',
  'Smallville',
  '1975-04-03',
  '1994-08-26',
  '1994-12-27',
  NULL
);

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  '1994-08-26',
  NULL,
  '1994-12-27',
  NULL
);
