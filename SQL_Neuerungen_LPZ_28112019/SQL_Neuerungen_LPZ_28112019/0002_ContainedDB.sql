/*


ContainedDb seit 2012

Security:

Login (master) vs User (Rechte in der DB)

Backup.. auf anderen Server einspielen
Verwaiste User --> sp_help_revlogin

sp_help_revlogin

viele Dinge, die nicht in der USerDb aufgehoben werden
--JObs (Backup, Wartungsplan, #tab)


ContainedDb ist eien DB plus Version ;-).. nix ist irgendwo weniger

--Anmeldung muss auf DB passieren

reduzierte Ansicht im Objektexplorer

--Jobs.. Nö..sinds nach wie vor in msdb

--#tempTabellen sind immer in der tempdb
--> Sprachsortierung: 

DB ist FInnSwedish .. tempdb ist aber Latin1

create proc #test

--Logins können migriert werden. 
sp_migrate_user_to_contained 





*/