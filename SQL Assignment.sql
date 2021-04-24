create database car;
desc car;
use customer_details;
select * from customer_details;

create database car;

use car;

create table car_details(car_brand int ,car_name varchar(20),car_model int,car_color varchar(20),car_price int,
primary key(car_name));

desc car_details;

alter table car_details modify car_brand varchar(20);

desc car_details;

alter table car_details add column car_number int;

desc car_details;

insert into car_details values("Maruthi Suzuki",800,2018,"Red",300000,"KA-54 T 8055");

alter table car_details modify car_number varchar(15);

desc car_details;

select * from car_details;

insert into car_details values("huindai","creta",2020,"white",800000,"KA-41 T 999");

insert into car_details values("tata","harrier",2021,"black",1500000,"KA-42 X 999"),
("toyota","innova",2017,"silky silver",1800000,"KA-03 N 333"),
("honda","crv",2016,"grey",2000000,"KA-04 P 36"),
("renault","duster",2015,"brown",900000,"KA-43 L 369"),
("kia","seltos",2020,"white",1300000,"KA-02 DR 46"),
("MG","hector",2020,"blue",1800000,"KA-01 AT 245");


select * from car_details;

update car_details set car_number="KA-01 AT 246" where car_model="hector";

select min(car_price) from car_details;

select max(car_price) from car_details;

select avg(car_price) from car_details;

select sum(car_price) from car_details;

select count(car_brand) from car_details;

select * from car_details where car_name in("800","verna","harrier");

select * from car_details where car_brand in("kia","renault","tata");

select car_name from car_details where car_price between 500000 and 1500000;

select car_name from car_details where car_price between 1500000 and 2000000;

select * from car_details where car_brand like "k%";

select car_name from car_details where car_brand like "_u%";

select car_name from car_details where car_brand like "___u%";

delete from car_details where car_name="800";
 

select * from car_details;

select car_name as nameofthecar from car_details;


/* truncate table TABLENAME;   //truncate table removes all rows from a table,but the table structure and its columns
	,constraints ,indexes,and so on remain.to remove the table definationin addition to its data drop table is used instead of truncate*/


/* drop table TABLENAME;   //it drops the table;;;   it deletes both content and the structure of the table   */


/* drop database DATABASENAME;   //it drops the database;;;   it deletes both content and the structure of the created database  */
