UPDATE person
  SET valid_to = '2001-04-01'
  WHERE name = 'John Doe'
    AND valid_to IS NULL
;
