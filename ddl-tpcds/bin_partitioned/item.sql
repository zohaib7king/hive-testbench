create database if not exists ${DB} location ${S3LOCATION};
use ${DB};

drop table if exists item;

create table item
stored as ${FILE}
as select * from ${SOURCE}.item
CLUSTER BY i_item_sk
;
