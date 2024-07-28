create database bank;
use bank;
create table bank_details(id int not null, bank_id int, bank_name varchar(20), ifsc varchar(20), primary key(bank_id));

select * from bank_details;
alter table bank_details add column noofaccount_holders int unique;

insert into bank_details values(1, 111, 'muthud', 'CAN2002', 200);
/* error - insert into bank_details values(2, 102, 'SBI', 'SBI2003', 800);*/
insert into bank_details values(1, 103, 'BankofBaroda', 'SBI4085', 800);
update bank_details set id = 2 where bank_id = 103;
insert into bank_details values(3, 256, 'FGP', 'ICIC4085', 700);
insert into bank_details values(4, 402, 'Muthur', 'Mut5007', 550);
insert into bank_details values(5, 122, 'DKD', 'BB3585', 400);
alter table bank_details add column noofbranch int;
update bank_details set noofbranch = 4 where bank_id = 111;
update bank_details set noofbranch = 3 where bank_id = 122;

alter table bank_details add constraint chk_noofbranches check(noofbranch <= 10);
update bank_details set noofbranch = 5 where bank_id = 256;
alter table bank_details drop constraint chk_noofbranches;
insert into bank_details values(6, 807, 'karnatakabank','GB708', 100, 11);


create table flipkart(item_id int, item_name varchar(20) unique, 
order_id int, cus_id int not null, 
noofitems int, constraint chk_noofitems check(noofitems < 15), primary key(order_id));
select * from flipkart;
alter table flipkart add column noofnotification int;
alter table flipkart add constraint chk_notification check(noofnotification < 5);
insert into flipkart values(10, 'catch', 12, 15, 14, 4);
insert into flipkart values(45, 'TV name', 89, 45, 13, 1);
insert into flipkart values(89, 'Paint', 102, 65, 1, 4);
insert into flipkart values(79, 'pen', 75, 106, 10, 2);
insert into flipkart values(80, 'veldingMachine', 906, 702, 18, 9);
insert into flipkart values(85, 'vakum', 907, 710, 14, 1);

alter table flipkart drop constraint chk_notification;


create table productmanagment(product_id int primary key, 
product_name varchar(20) unique, brand varchar(20), product_reviews int,
constraint chk_product_reviews check(product_reviews  <= 5), quality varchar(20));
desc productmanagment;
alter table productmanagment add column price bigint;
alter table productmanagment add constraint chk_price check (price between 10 and 1000);

/insert into productmanagment values(56, 'Shirt', 'petter', 6, 'nice', 567);/
insert into productmanagment values(56, 'shirt', 'Puma', 5, 'good', 875);
insert into productmanagment values(10, 'Formal', 'nike', 4, 'best', 300);
insert into productmanagment values(98, 'Pant', 'Lake', 5, 'better', 876);
insert into productmanagment values(100, 'facewash', 'Role', 5, 'best', 999);
insert into productmanagment values(152, 'fogg', 'Wild', 4, null, 923);
alter table productmanagment add constraint chk_price check (price between 10 and 1000);

alter table productmanagment drop constraint chk_price;


create table employee(id int primary key, company_name varchar(20), 
noofdepartment int, department varchar(20) unique, 
noofemployees int, constraint chk_noofemployees check(noofemployees between 50 and 100));  

alter table employee add column salary bigint;
alter table employee add constraint chk_slalary check(salary <= 50000);

insert into employee values(508, 'info', 4, 'manager', 50, 35000);
/insert into employee values(802, 'google', 10, 'Developer', 1000, 26000);/
insert into employee values(802, 'loginware', 10, 'Development', 70, 22000);
insert into employee values(100, 'man', 11, 'Security', 90, 7000);
insert into employee values(50, 'Acenture', 20, 'Tester', 88, 72000);
insert into employee values(700, 'Login', 5, 'Dirctors', 55, 33000);

alter table employee drop constraint chk_slalary;