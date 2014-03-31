add jar hdfs:///user/cloudera/workflow/lib/hive-serdes-1.0-SNAPSHOT.jar;


drop table earthquakes;

create external table earthquakes (
type string,
properties STRUCT<
     mag:string,
     place:string,
     time:string,
     updated:string,
     tz:int,
     url:string,
     detail:string,
     felt:string,
     cdi:string,
     mmi:string,
     alert:string,
     status:string,
     tsunami:string,
     sig:int,
     net:string,
     code:string,
     ids:string,
     sources: string,
     types:string,
     nst:string,
     dmin:string,
     rms:string,
     gap:string,
     magType:string,
     type:string,
     title:string>,
geometry STRUCT<
     type:string,
     coordinates:ARRAY<STRING>>,
id string)
ROW FORMAT SERDE 'com.cloudera.hive.serde.JSONSerDe'
LOCATION '/etl/earthquakes/landing';
