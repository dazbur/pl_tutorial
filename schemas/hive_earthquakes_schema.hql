create external table earthquakes (
type string,
properties STRUCT<
     mag:double,
     place:string,
     time:timestamp,
     updated:timestamp,
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
     rms:double,
     gap:string,
     magType:string,
     type:string,
     title:string>,
geometry STRUCT<
     type:string,
     coordinates:ARRAY<DOUBLE>>,
id string)
ROW FORMAT SERDE 'com.cloudera.hive.serde.JSONSerDe'
LOCATION '/user/cloudera/etl/earthquakes/landing';