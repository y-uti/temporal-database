UPDATE person
  SET transaction_to = '2001-02-02'
  WHERE name = 'John Doe'
    AND valid_to IS NULL
    AND transaction_to IS NULL
;

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  '1994-08-26',
  '1995-06-01',
  '2001-02-02',
  NULL
);

INSERT INTO person VALUES (
  'John Doe',
  'Beachy',
  '1995-06-01',
  '2000-09-03',
  '2001-02-02',
  NULL
);

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  '2000-09-03',
  NULL,
  '2001-02-02',
  NULL
);
