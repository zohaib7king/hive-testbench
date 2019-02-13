create database if not exists ${DB} location ${S3LOCATION}/${DB};
use ${DB};

drop table if exists catalog_page;

create table catalog_page
stored as ${FILE}
as select * from ${SOURCE}.catalog_page;
