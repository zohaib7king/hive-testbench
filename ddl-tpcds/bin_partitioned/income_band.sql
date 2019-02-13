create database if not exists ${DB} location 's3://vg-nbs-hive/hive/tpcds';
use ${DB};

drop table if exists income_band;

create table income_band
stored as ${FILE}
as select * from ${SOURCE}.income_band;
