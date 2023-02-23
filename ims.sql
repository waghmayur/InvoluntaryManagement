# create "inventory" database
create database inventory;
use inventory;
#create "user" table
create table user(
	          uid bigint not null, 
                  firstName varchar(50) not null, 
                  middleName varchar(50) not null, 
                  lastName varchar(50) not null, 
                  mobile varchar(15) not null, 
                  email varchar(50) not null, 
                  userName varchar(50) not null,
                  userPassword varchar(32) not null, 
                  registeredAt datetime not null, 
                  lastLogin datetime null, 
                  primary key(uid)
                  );
                  
#create "brand" table                  
 Create table brand (
		    bid bigint not null, 
		    brandName varchar(30) not null, 
		    brandDescription varchar(100) not null, 
                    createdBy varchar(20) not null, 
                    updatedBy varchar(20) not null, 
                    createdAt datetime not null,
                    updatedAt datetime not null,
                    primary key(bid)
                    );   

#create "address" table  
create table address(
		     aid bigint not null,
                     uid bigint not null,
                     oid bigint not null,
                     firstName varchar(50) not null,
                     lastName varchar(50) not null,
                     line1 varchar(50)not null,
                     line2 varchar(50) not null,
                     mobile varchar(15) not null, 
                     email varchar(15) not null,
                     city varchar(50) not null,
                     country varchar(50) not null,
                     createdAt datetime not null,
                     updatedAt datetime,
                     primary key(aid)
                     );
                     
#create "product" table  
create table product(
		      pid bigint not null, 
                      bid bigint not null,
                      oid bigint not null,
		      productName varchar(75) not null, 
		      productDescription varchar(100) not null, 
                      ProductType varchar(30) not null, 
                      createdBy varchar(20) not null, 
                      updatedBy varchar(20) not null,
                      createdAt datetime not null,
                      updatedAt datetime not null,
                      primary key(pid)
                     );

#create "orderDetail" table  
create table order_Detail(
			   oid bigint not null,
			   orderproductName varchar(80) not null,
                           orderproductQuantity bigint not null,
                           primary key(oid)
                          );

#create "productOffer" table  
create table product_Offer(
			    poid bigint not null,
			    discount float not null,
                            primary key(poid)
                         );

#create "inventoryTable" table  
create table inventory_Product(
			       pid bigint not null,
			       productPrice float not null,
                               productQuantity int not null
                            );
#create "invoiceTable" table 
create table invoice_Product(
			    transactionId varchar(30) not null,
			    transactionName varchar(30) not null,
			    transactionAmount bigint,
                            transactionStatus varchar(40) not null,
                            transactionCreatedAt datetime not null,
                            transactionUpdatedAt  datetime,
                            primary key(transactionId)
                           );

#create "defectiveTable" table 
create table defective_Product(
			        did bigInt not null,
                                oid bigint not null,
				defectiveName varchar(50) not null,
                                defectiveQuantity bigint not null,
                                primary key(did)
                              ); 

show tables;


# Tables_in_inventory
desc address;
desc brand
desc defective_product
desc inventory_product
desc invoice_product
desc order_detail
desc product
desc product_offer
desc user
