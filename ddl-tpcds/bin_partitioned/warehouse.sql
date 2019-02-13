create database if not exists ${DB} location 's3://vg-nbs-hive/hive/tpcds';
use ${DB};

drop table if exists warehouse;

create table warehouse
stored as ${FILE}
as select * from ${SOURCE}.warehouse;
