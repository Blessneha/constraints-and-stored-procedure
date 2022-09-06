create database assign3
use assign3

create table Customers( Customerid varchar(10) not null ,CompanyName varchar(40) not null,contactName char(30) null,
              Address varchar(60) null,City char(15) null,Phone char(24) null,Fax char(24) null,primary key(Customerid) )




create table Orders(Orderid integer not null,customerid varchar(10) not null, orderdate datetime null,
shippeddate datetime null, freight money null,shipname varchar(40) null, shipaddress varchar(60) null, 
 quantity integer null,primary key(Orderid),foreign key(customerid) references Customers(Customerid))
 

 alter table Orders add constraint qk_ty check(quantity between 1 and 30)

  sp_helpconstraint Orders

  alter table Orders drop constraint qk_ty
  use assign2

  create procedure empdep
  as
  begin
  insert into Employee values(1234,'Neon','James','d4')
  insert into Department values('d4','XYZ','MNO')
  end

  exec empdep

  select*from Employee
  select *from Department
  

  declare @sid int
  set @sid=1

  create table Student1(sid1 int not null unique,name varchar(20),dob date)

  create procedure Cal(@sid1 int,@name varchar(20),@dob date)
  as
  begin
  insert into Student1 values(@sid1,@name,@dob)
  end




 exec Cal 1,'dfgf','2020/2/20'
 select*from Student1



 create procedure Getage(@dob date)
 as
 begin
 declare @age int
 select @age=DATEDIFF(yy,@dob,getdate())
 print @age
 end

 exec Getage '2020/2/20'
