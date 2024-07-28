create database bankdetails;
use bankdetails;
create table bank_details(id int not null, bank_id int, bank_name varchar(20), ifsc varchar(20), primary key(bank_id));

select * from bank_details;
alter table bank_details add column noofaccount_holders int unique;

insert into bank_details values(1, 521, 'Canara', 'CAN2002', 200);
insert into bank_details values(6, 220, 'SBI', 'SBI4085', 800);
update bank_details set id = 2 where bank_id = 220;
insert into bank_details values(3, 101, 'ICIC', 'ICIC4085', 700);
insert into bank_details values(4, 100, 'Muthur', 'Mut5007', 550);
insert into bank_details values(5, 331, 'BankofBaroda', 'BB3585', 400);
alter table bank_details add column noofbranch int;
update bank_details set noofbranch = 4 where bank_id = 521;
update bank_details set noofbranch = 3 where bank_id = 331;
alter table bank_details add constraint chk_noofbranches check(noofbranch <= 10);
update bank_details set noofbranch = 5 where bank_id = 101;
alter table bank_details drop constraint chk_noofbranches;
insert into bank_details values(6, 807, 'GraminaBnak','GB708', 100 );