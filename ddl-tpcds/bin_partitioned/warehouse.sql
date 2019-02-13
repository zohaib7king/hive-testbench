create database if not exists ${DB} location ${S3LOCATION};
use ${DB};

drop table if exists warehouse;

create table warehouse
stored as ${FILE}
as select * from ${SOURCE}.warehouse;
