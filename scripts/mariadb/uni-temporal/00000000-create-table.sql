CREATE OR REPLACE TABLE person (
  name       varchar(10),
  address    varchar(10),
  valid_from date,
  valid_to   date,
  PERIOD FOR valid_period(valid_from, valid_to),
  UNIQUE (name, valid_period WITHOUT OVERLAPS)
);
