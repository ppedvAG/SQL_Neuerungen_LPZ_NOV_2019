--IX Wartung/Statistiken
--(20% + 500)
select top 100000 * into o2 from orders


select * from o2 where orderid = 100 --gesch�tzt 1

select * from o2 where freight < 1 --gesch�tzt 1

select * from sys.dm_db_index_usage_stats


--jetzt erst seit SQL 2016 werden Fragmentierungsgrade gespr�ft!
--10%...30%
 