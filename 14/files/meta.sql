CREATE DATABASE db;

create table db.local_data (
    id Int64,
    title String,
    description String,
    content String,
    date Date
)
ENGINE = MergeTree()
PARTITION BY date
ORDER BY id;
