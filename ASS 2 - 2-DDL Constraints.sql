create database Sales;
use Sales;
create table Orders (Order_ID int primary key, Customer_Name varchar(15) Not null,Product_Category Varchar(15) not null,Ordered_Item varchar(15) not null ,Contact_Number varchar(15) not null unique);

desc Orders;
-- 1. Add a new column named “order_quantity” to the orders table.
alter table Orders 
add Order_Quantity Int(300) not null;

-- 2. Rename the orders table to the sales_orders table
Rename table Orders to Sales_Orders;
-- 3. Insert 10 rows into the sales_orders table.
insert into Sales_Orders ( Order_ID,Customer_Name,Product_Category,Ordered_Item,Contact_Number,Order_Quantity)
Values ('101','Don','Household','Chair','1234567890',6);
Select * from Sales_Orders;
insert into	Sales_Orders (Order_ID,Customer_Name,Product_Category,Ordered_Item,Contact_Number,Order_Quantity)
Values ('102','Manu','Electronic','Head Phone','2134546576',10),('103','Nimmy','Fashion','Ring','0987675432',20),('104','Bushra','Food','Cream Bun','0987675453',15),('105','Mini','Toys','Dolls','0987654543',30),
       ('106','Nidhin','Cloyhes','Shirt','122165657',50),
       ('107','Sharon','Baby Care','Baby Wipes','2341516181',100),
       ('108','Karthika','Electronic','Lamp','9876765053',150),
        ('109','Kavitha','Food','Cream Bun','0987635453',15),
       ('110','Malini','Toys','Dolls','0987654943',30),
       ('111','Chandran','Clothes','Shirt','122165957',50),
       ('112','Surya','Baby Care','Baby Wipes','2341596181',100),
       ('113','Latha','Electronic','Lamp','9876764953',150);

-- Retrieve customer_name and Ordered_Item from the sales_orders table
Select Customer_Name ,Ordered_Item from Sales_Orders; 




insert into Sales_Orders ( Order_ID,Customer_Name,Product_Category,Ordered_Item,Contact_Number,Order_Quantity)
Values ('114','Jintom','Household','Chair','1020304097',150);

##  5. Use the update command to change the name of the product for any row

update Sales_Orders set Ordered_Item ='Kurta' where Order_ID = 111;

Select * from Sales_Orders;

## Delete the sales_orders table from the database.
Drop Table Sales_Orders;
