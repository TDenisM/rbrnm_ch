CREATE TABLE ch_replicated_distributed ON CLUSTER 'local'
(
    id Int64,
    title String,
    description String,
    content String,
    date Date
)
ENGINE = Distributed('{cluster}', 'default', 'ch_replicated_local', rand());
