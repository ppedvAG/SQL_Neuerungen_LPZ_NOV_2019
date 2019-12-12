/*
SETUP

\\pc\mssqlserver\DB\TABELLE --> C:\.... als Datei
Select * from filetabellen
Semantik

text image deprecated

2012

seit 2003--> WinFS--> 2012


VolumeWartungstask
:


.mdf
------------------------1MB--1MB
sfdsfsdfdf34rf3f434rr43sdfsfsfs000000  vorher ausgenullt!
------------------------1MB--1MB

--------------------
sdffsfsdf MV BM.doc
--------------------

Sicherheitsrictlinie ..SQL kann nun ohne Ausnullen DAteivergrößerungen machen


TempDB sollte eig HDDs haben

Anzahl der Dateien soviele wie CPUs.. max 8
Alle Dateien wachsen immer gleich(zeitig)
--T1117 -T1118


neue Def Werte für DBs: 8 MB pro Datei Vergrößerung 64MB pro Datei

TEMPDB kann die größte meist frequ des Systems sein


MAXDOP
/*


use nwind
set statistics io, time on
select country, sum(freight) from customers c inner join orders o on c.customerid = o.customerid
group by country


--Paral. mehr CPUs.. macht hier doch Sinn
--SQL nimmt entweder 1 oder alle her.. ab wann .. ab 5 SQL Dollar
--mit 6 CPU nahezu gleich schnell und 2 CPUS haben frei!!!

--SpeicherSettings beim Setup bereist, sonbst später.. 
! MIN Speicher : Garantie für SQL Server
! MAX Garantie für andere Dienste









*/