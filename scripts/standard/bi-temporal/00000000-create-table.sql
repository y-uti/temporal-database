DROP TABLE IF EXISTS person;
CREATE TABLE person (
  name             varchar,
  address          varchar,
  valid_from       date,
  valid_to         date,
  transaction_from date,
  transaction_to   date
);
