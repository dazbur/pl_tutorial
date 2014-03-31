create table top_10_cities as select name, population from city order by population desc limit 10;  
