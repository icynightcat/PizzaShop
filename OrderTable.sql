-- This is the main table for orders where each order is related to a user (i.e. Foreign Key)
create table dbo.Orders(
OrderID int identity(1,1) NOT NULL Primary Key,
OrderName varchar (50) NOT NULL,
OrderTime datetime NOT NULL,
UserOrderID int NOT NULL,
FOREIGN KEY (UserOrderID) REFERENCES Person(PersonID)
);

insert into dbo.Orders(OrderName, OrderTime, UserOrderID)
values ('BBQ Chicken', GETDATE(), 1);

insert into dbo.Orders(OrderName, OrderTime, UserOrderID)
values ('BBQ Chicken', GETDATE(), 1);

insert into dbo.Orders(OrderName, OrderTime, UserOrderID)
values ('Vegetable', GETDATE(), 1);

insert into dbo.Orders(OrderName, OrderTime, UserOrderID)
values ('BBQ Chicken', GETDATE(), 2);

insert into dbo.Orders(OrderName, OrderTime, UserOrderID)
values ('Pepperoni', GETDATE(), 2);

insert into dbo.Orders(OrderName, OrderTime, UserOrderID)
values ('Vegetable', GETDATE(), 2);

select * from dbo.Orders