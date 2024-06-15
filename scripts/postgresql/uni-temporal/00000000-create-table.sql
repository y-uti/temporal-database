CREATE EXTENSION IF NOT EXISTS btree_gist;

DROP TABLE IF EXISTS person;
CREATE TABLE person (
  name        varchar,
  address     varchar,
  valid_range daterange,
  EXCLUDE USING gist (
    name WITH =,
    valid_range WITH &&
  )
);
