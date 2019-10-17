--Admin

Create table Admin(
Admin_Id Number Primary Key,
First_Name varchar(30) Not Null,
Last_Name varchar(30) Not Null,
Email varchar(50) Not Null,
Phone_No number Not Null
)


--Customer


create table customer(
Customer_Id number primary key,
Operator_Id number,
First_Name varchar(30) not null,
Last_Name varchar(30) not null,
Email varchar(50) not null,
Phone_No number not null,
Address varchar(100) not null,
Landmark varchar(50),
State varchar(30) not null,
City varchar(30)  not null,
ZipCode number not null,
creation_date varchar(20)  not null,
Retailer_Id number,
Foreign key (Operator_Id) references Operator(Operator_Id),
Foreign key (Retailer_Id) references retailer(retailer_id)
)

---CREATING SEQUENCE

CREATE SEQUENCE customer_id_seq
START WITH 701
INCREMENT BY 1




--Operator

Drop table Operator;


create table Operator(
Operator_Id Number Primary key,
First_Name varchar(30) Not Null,
Last_Name varchar(30) Not Null,
Email varchar(50) Not Null,
Phone_No varchar(20) Not Null,
Shift_Time_Start varchar() Not null,
Shift_Time_End varchar(20) not null,
Max_No_of_Customers number not null,
Creation_Date varchar(20) not null
)


---CREATING SEQUENCE

CREATE SEQUENCE operator_id_seq
START WITH 801
INCREMENT BY 1



--Retailer

create table retailer 
(
retailer_id number primary key,
name varchar(30) not null,
contact_no_1 number not null,
contact_no_2 number not null,
address_1 varchar(30) not null,
address_2 varchar(30) not null,
zipcode number not null,
city varchar(30) not null,
state varchar(30) not null,
set_top_box_limit number not null,
credit_limit number not null,
commission_percent number not null,
service_charges number not null,
creation_date date not null
)

---CREATING SEQUENCE

CREATE SEQUENCE retailer_id_seq
START WITH 901
INCREMENT BY 1

CREATE or REPLACE TRIGGER tr_retailer
	BEFORE INSERT ON retailer
	FOR EACH ROW
BEGIN
  SELECT retailer_id_seq.nextval
  INTO :new.retailer_id
  FROM dual;
END;

--Login

create table login
(
username varchar(30) primary key,
password varchar(30),
role varchar(30)
)

select * from login;