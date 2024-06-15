UPDATE person
  SET valid_range = daterange(lower(valid_range), '2001-04-01')
  WHERE name = 'John Doe'
    AND upper_inf(valid_range)
;
