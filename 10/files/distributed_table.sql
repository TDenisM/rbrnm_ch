CREATE TABLE ch_distributed
(
    id Int64,
    title String,
    description String,
    content String,
    date Date
)
ENGINE = Distributed('local', 'default', 'ch_local', rand());
