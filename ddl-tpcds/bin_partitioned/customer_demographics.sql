create database if not exists ${DB} location ${S3LOCATION};
use ${DB};

drop table if exists customer_demographics;

create table customer_demographics
stored as ${FILE}
as select * from ${SOURCE}.customer_demographics;
