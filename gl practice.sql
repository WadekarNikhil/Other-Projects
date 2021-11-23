create database mydemo;
use mydemo;
show databases;
create table dataofcustomer
(
  custid varchar(6) primary key,
  fname varchar(30),
  mname varchar(30),
  ltname varchar(30),
  city varchar(15),
  age int(10),
  mobileno  varchar(10),
  occupation varchar(10),
  dob date
  );

show tables;

insert into dataofcustomer values('C00001','Ramesh','chandra','sharma','delhi','45','9543198345','service','1976-12-06');

insert into dataofcustomer values('C00002','avinash','sunder','mirha','delhi','32','9865111612','service','1988-10-05');
insert into dataofcustomer values('C00003','Rahul','','Rastogi','delhi','24','9956235688','student','1996-08-15');

insert into dataofcustomer values('C00004','Parul','','Gandhi','delhi','46','9543198345','Housewife','1975-12-03');
insert into dataofcustomer values('C00005','Naveen','chandra','aedakar','Mumbai','23','8754551345','service','1997-5-08');
insert into dataofcustomer values('C00006','chitresh','','Barwe','Mumbai','18','9543115445','student','2002-11-06');
insert into dataofcustomer values('C00007','Amit','kumar','Barker','Mumbai','60','9543452150','service','1961-12-08');
insert into dataofcustomer values('C00008','Nisha','','Danle','Mumbai','33','9586521549','service','1985-06-01');
insert into dataofcustomer values('C00009','Abhishek','','Dutta','Kolkata','35','8565235643','service','1986-2-25');
insert into dataofcustomer values('C00010','Shankar','','Nair','chennai','40','9543452145','service','1981-12-06');

show tables;
select * from dataofcustomer;

select min(age) as minage from dataofcustomer;
select fname as minage from dataofcustomer  where age ='18';

select max(age) from dataofcustomer;
select  fname from dataofcustomer where age='60';
select count(*) from  dataofcustomer;


select count(*) from dataofcustomer;
select count(age) as total from dataofcustomer;


select count(*) from dataofcustomer;


select count(fname),city from dataofcustomer group by city having count(fname)>2;
select count(fname),city from dataofcustomer group by city having count(fname)=2;
select count(fname),city from dataofcustomer group by city having count(fname)=4;
select count(fname),city from dataofcustomer group by city having count(fname)=1;
select count(fname),city from dataofcustomer group by city having count(fname)<2;
select count(fname),city from dataofcustomer group by city having count(fname)!=4;



create table customer 
(
     custid  varchar(6),
     fname varchar(30),
     mname varchar(30),
     lname varchar(30),
     city varchar(15),
     mobileno varchar(10),
     occupation varchar(10),
     dob date,
     constraint customer_custid_pk primary key(custid)
     );

create table account
(
   acnumber varchar(6),
   custid varchar(6),
   bid varchar(6),
   opening_balance int(7),
   aod date,
   atype varchar(10),
   astatus varchar(11),
   constraint account_anumber_pk primary key(acnumber),
   constraint account_custid_fk foreign key(custid) references dataofcustomer(custid)
   
   );
   
   drop table account;
   insert into account values('A00001','C00001','B00001',1000,'2012-12-15','saving','active');
   
   insert into account values('A00002','C00002','B00002',1000,'2012-06-12','saving','active');
   insert into account values('A00003','C00003','B00003',1000,'2012-05-17','saving','active');
   insert into account values('A00004','C00004','B00004',1000,'2013-01-27','saving','active');
   insert into account values('A00005','C00005','B00005',1000,'2012-12-17','saving','active');
   insert into account values('A00006','C00006','B00006',1000,'2010-08-12','saving','suspainded');
   insert into account values('A00007','C00007','B00007',1000,'2012-10-02','saving','active');
   insert into account values('A00008','C00008','B00008',1000,'2009-11-09','saving','Terminated');
   insert into account values('A00009','C00009','B00009',1000,'2008-11-30','saving','Terminated');
   insert into account values('A00010','C00010','B00010',1000,'2013-03-01','saving','active');
 
select * from account;

select count(*) from account;

select count(*),astatus from account group by astatus;

select count(*),astatus from account group by astatus having count(atype)=2;
select count(*),astatus from account group by astatus having count(atype)=7;

