Use InventoryMng;
alter table ProductMaster alter column productname varchar(50);

insert into ProductMaster values(1,'Tubelight',500),(2,'switch',1000),(3,'screws',2000),(4,'nail',500);
insert into ProductMaster values(5,'fan',200);
select * from ProductMaster;

insert into Users(UserName,password,Fullname,IsActive,Category) values('vikram','vikram@453','vikram ronald',1,'Admin');
insert into Users(UserName,password,Fullname,IsActive,Category) values('swathi','swath@132','swathi palnadu',1,'tester');
insert into Users(UserName,password,Fullname,IsActive,Category)  values('Mathew','mathew@123','jame mathew',1,'devops'); 
select * from Users;

insert into tbl_Transaction(transactiondate,productid,transactiontype,qty,UpdatedBy) values('2003-07-03',2,'in',5,2);
insert into tbl_Transaction(transactiondate,productid,transactiontype,qty,UpdatedBy) values('2002-06-09',1,'out',4,1);
insert into tbl_Transaction(transactiondate,productid,transactiontype,qty,UpdatedBy) values('2003-04-10',3,'in',6,2);
insert into tbl_Transaction(transactiondate,productid,transactiontype,qty,UpdatedBy) values('2006-08-20',3,'out',6,3);


select * from tbl_Transaction;
--1
select Fullname,Category from Users;
--2
select ProductName from ProductMaster where AvailableQty<500;
--3
Select * from tbl_Transaction where UpdatedBy IN
(Select UserID from Users where UserName='Mathew');
--4
select transactiondate,transactiontype from tbl_Transaction;
--5.
select * from tbl_Transaction where transactiontype='in';

--6
select * from ProductMaster where ProductName='nail';

