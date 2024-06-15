UPDATE person
  SET valid_to = '1995-06-01'
  WHERE name = 'John Doe'
    AND valid_to IS NULL
;

INSERT INTO person VALUES (
  'John Doe',
  'Beachy',
  '1995-06-01',
  '2000-09-03'
);

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  '2000-09-03',
  NULL
);
