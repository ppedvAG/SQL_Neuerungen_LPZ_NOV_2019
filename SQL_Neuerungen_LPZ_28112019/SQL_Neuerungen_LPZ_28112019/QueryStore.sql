select * from ku1 where id < 2--SEEK mit Lookup


create proc gptest @par1 int
as
select * from ku1 where id < @par1


--Wenn es gut läuft: SEEK.. SCAN  
--Lookup: Anruf


set statistics io, time on
select * from ku1 where id < 2--SEEK mit Lookup..4 Seiten...
select * from ku1 where city = 'Berlin' --Table SCAN!!! -- 43062

exec gptest 10000000

dbcc freeproccache


select * from ku1 where id < 12000--T SCAN  43062,

exec gptest 100000 --1002236




