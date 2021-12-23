CREATE TABLE ch_replicated_local ON CLUSTER local
(
    id Int64,
    title String,
    description String,
    content String,
    date Date
)
ENGINE = ReplicatedMergeTree('/clickhouse/{cluster}/tables/ch_replicated_local', '{replica}')
PARTITION BY date
ORDER BY id;
