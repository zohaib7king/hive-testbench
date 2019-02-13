create database if not exists ${DB} location 's3://vg-nbs-hive/hive/tpcds';
use ${DB};

drop table if exists store;

create table store
stored as ${FILE}
as select * from ${SOURCE}.store
CLUSTER BY s_store_sk
;
