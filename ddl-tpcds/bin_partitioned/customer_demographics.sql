create database if not exists ${DB} location 's3://vg-nbs-hive/hive/tpcds';
use ${DB};

drop table if exists customer_demographics;

create table customer_demographics
stored as ${FILE}
as select * from ${SOURCE}.customer_demographics;
