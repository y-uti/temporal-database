CREATE OR REPLACE TABLE person (
  name       varchar(10),
  address    varchar(10),
  valid_from date,
  valid_to   date,
  -- transaction_from timestamp(6) GENERATED ALWAYS AS ROW START,
  -- transaction_to   timestamp(6) GENERATED ALWAYS AS ROW END,
  PERIOD FOR valid_period(valid_from, valid_to),
  -- PERIOD FOR SYSTEM_TIME(transaction_from, transaction_to),
  UNIQUE (name, valid_period WITHOUT OVERLAPS)
)
WITH SYSTEM VERSIONING;
