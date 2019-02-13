create database if not exists ${DB} location '${S3LOCATION}/${DB}';
use ${DB};

drop table if exists promotion;

create table promotion
stored as ${FILE}
as select * from ${SOURCE}.promotion;
