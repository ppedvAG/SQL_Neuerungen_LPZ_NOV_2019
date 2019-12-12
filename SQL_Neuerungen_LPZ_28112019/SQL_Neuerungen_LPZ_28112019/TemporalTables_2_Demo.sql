use TemporalTables
GO

insert into Contacts 
(Lastname,Firstname,Birthday, Phone, email) 
select 'Kent', 'Clark','3.4.2010', '089-3303003', 'clarkk@krypton.universe' 

insert into Contacts 
(Lastname,Firstname,Birthday, Phone, email) 
select 'Wayne', 'Bruce','3.4.2012', '08677-3303003', 'brucew@gotham.city' 

--Und nun die Änderungen, die zu einer Versionierung der Datensätze führt 
WAITFOR DELAY '00:00:02'
update contacts set email = 'wer@ea3333rth.de' where cid = 1 
update contacts set Phone = 'w333434' where cid = 1 
update contacts set Lastname = '33333' where cid = 1 

WAITFOR DELAY '00:00:02'

update contacts set email = 'asas@eeeearth.de' where cid = 1 
update contacts set Phone = 'w34sawwsaa34' where cid = 2 
update contacts set Lastname = 'Sqqqqmith' where cid = 1 

--Result
select * from contacts 
select * from ContactsHistory 


--nach Version suchen

select * from contactshistory 
where 
    Startdatum >= '2019-11-29 13:09:20.6044477' 
    and 
    Enddatum <= '2019-11-29 13:09:34.6044477'  

--Noch besser
select * from contacts 
    FOR SYSTEM_TIME AS OF '2019-11-29 13:09:25' 
    where cid =1 

	delete from contacts where cid = 1


select cid from contactshistory
intersect --intersect
select cid from contacts


	Alter Table contacts
	add spx int


	update contacts set Firstname= 'Chris', spx=2 where cid = 1

	--nope
delete from Contactshistory where StartDatum <= '2016-08-05 12:45:43.2711351'


