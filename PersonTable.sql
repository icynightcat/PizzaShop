-- This is the main table for users of the application
create table dbo.Person(
PersonID int identity(1,1) NOT NULL Primary Key,
PersonName nvarchar (100),
PersonStatus varchar(20) NOT NULL,
PersonEmail nvarchar(100) NOT NULL,
PersonPassword nvarchar(100) NOT NULL
);

insert into dbo.Person (PersonName, PersonStatus, PersonEmail, PersonPassword)
values ('John Doe', 'Customer', 'johndoe@hotmail.com', 'HelloWorld');

insert into dbo.Person (PersonName, PersonStatus, PersonEmail, PersonPassword)
values ('Jack Bell', 'Employee', 'jackbell@hotmail.com', 'HelloMoney');

select * from dbo.Person
