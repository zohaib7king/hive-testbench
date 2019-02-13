create database if not exists ${DB} location 's3://vg-nbs-hive/hive/tpcds';
use ${DB};

drop table if exists time_dim;

create table time_dim
stored as ${FILE}
as select * from ${SOURCE}.time_dim;
