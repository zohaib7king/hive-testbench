create database if not exists ${DB} location ${S3LOCATION};
use ${DB};

drop table if exists ship_mode;

create table ship_mode
stored as ${FILE}
as select * from ${SOURCE}.ship_mode;
