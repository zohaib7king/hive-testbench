create database if not exists ${DB} location 's3://vg-nbs-hive/hive/tpcds';
use ${DB};

drop table if exists inventory;

create table inventory
stored as ${FILE}
as select * from ${SOURCE}.inventory
CLUSTER BY inv_date_sk
;
