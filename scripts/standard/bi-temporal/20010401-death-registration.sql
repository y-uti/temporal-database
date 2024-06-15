UPDATE person
  SET transaction_to = '2001-04-01'
  WHERE name = 'John Doe'
    AND valid_to IS NULL
    AND transaction_to IS NULL
;
