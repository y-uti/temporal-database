UPDATE person
  SET valid_to = '1994-08-26'
  WHERE name = 'John Doe'
    AND valid_to IS NULL
;

INSERT INTO person VALUES (
  'John Doe',
  'Bigtown',
  '1994-08-26',
  NULL
);
