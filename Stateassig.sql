create database StateInformation;

use StateInformation;

create table state_info(state_id int, state_name varchar(20), state_capital varchar(20), official_language varchar(20), governor varchar(20), average_incomme float, gdp bigint, population bigint, area varchar(20), largest_city varchar(20));

create table scam_info(scam_id int, scan_name varchar(20), scam_type varchar(20), victim varchar(20), reported_case int, loss float, year_of_scam int, action_taken varchar(20),reported_date date, judgemet varchar(20));


alter table state_info add column established_year int;
alter table state_info add column tourist_places varchar(20);
alter table state_info add column no_of_industries int;
alter table state_info add column major_industries varchar(20);
alter table state_into add column name_of_police_force varchar(20);

desc state_info;

select * from state_info;

insert into state_info values(1, 'Andhra Pradesh', 'Amaravati', 'Telugu', 'BiswaBhusan', 60000, 100000000000, 54000000, '162968Km', 'Visakhapatnam', 1956, 'Tirupati', 200, 'IT,Agriculture');
insert into state_info values(2, 'Arunachal Pradesh', 'Itanagar', 'Hindi, Arunachali', 'Dr.B.D.Mishra', 50000,10000000000, 1400000, '83743Km', 'Itanagar', 	1987, 'ziro Valley', 50, 'Handicrafts');
insert into state_info values(3, 'Assam', 'Dispur', 'Assamese', 'Gulab Chand Kataria', 55000, 90000000000, 35000000, '78438Km', 'Guwahati', 1950, 'NationalPark',100, 'Tea, Oil');
insert into state_info values(4, 'Bihar', 'Patna', 'Hindi', 'Rajendra Arlekar', 40000, 80000000000, 120000000, '94163Km', 'Patna', 1950, 'Bodh Gaya, Naland',80, 'Education');
insert into state_info values(5, 'Chhattisgarh', 'Raipur', 'Hindi', 'VishwasKailas', 55000, 90000000000,29000000, '135192Km', 'Raipur', 2000, 'ChitrakootFallValley',70, 'Mining, Steel');
insert into state_info values(5, '	Goa', 'Panaji', 'Konkani', 'P.S.Sreedharan', 70000, 40000000000,2000000, '3702Km', 'Vasco da Gama', 1987, 'Baga Beach',30, 'Tourism, Mining');
insert into state_info values(6, 'Gujarat', 'Gandhinagar', 'Gujarati', 'Acharya Devvrat', 65000, 150000000000,65000000, '196024Km', 'Ahmedabad', 1960, 'Gir National Park,',150, 'Textiles,Chemicals,');
insert into state_info values(7, 'Haryana', 'Chandigarh', 'Hindi', 'Bandaru Dattatreya', 70000, 130000000000,28000000, '44212Km', 'Faridabad', 	1966, 'Sultanpur Lake',60, 'Manufacturing,');
INSERT INTO state_info values(8, '	Haryana','Chandigarh', 'Hindi', 'Bandaru Dattatreya', 7000, 130000000000, 28000000, '44212kM', 'Faridabad', 1966, 'Kurukshetra',60,'IT, Agriculture'), (9, 'Himachal Pradesh', 'Shimla', 'Hindi', 'Shiv Pratap Shukla', 60000, 60000000000, 7500000, '55673Km',  'Shimla', 1971,'Manali, Dharamshala', 40, 'Tourism, Hydro Power');
INSERT INTO state_info values(9, 'Himachal Pradesh','Shimla', 'Hindi', 'Shiv Pratap Shukla', 6000, 60000000000, 7500000, '55673kM', 'Shimla', 1971, 'Manali, Dharamshala',40,'Tourism,Hydro Power'), (10, 'Jharkhand', 'Ranchi', 'Hindi', 'C.P. Radhakrishnan', 50000, 70000000000, 38000000, '79714Km',  'Jamshedpur', 2000,'Netarhat, Jamshedpur', 80, 'Steel, Engineering');
INSERT INTO state_info values(11, '	Karnataka','Bengaluru', 'Kannada', 'Thaawarchand Gehlot', 7000, 200000000000, 65000000, '191791kM', 'Bengaluru', 1956, 'Hampi, Coorg',150,'IT, Aerospace'), (12, 'Kerala', 'Thiruvananthapuram', '	Malayalam', 'Arif Mohammed Khan', 80000, 60000000000, 34000000, '38863KKm',  'Kochi', 1956,'Munnar, Alappuzha', 100, 'Rubber');
INSERT INTO state_info values(13, 'Madhya Pradesh','Bhopal', '	Hindi', 'Mangubhai Patel', 55000, 90000000000, 80000000, '308350kM', 'Indore', 1956, 'Khajuraho, Sanchi',90,'Agriculture'), (14, 'Maharashtra', 'Mumbai', 'Marathi', 'Ramesh Bais', 80000, 300000000000, 120000000, '307713KKm', 'Mumbai', 1960,'AjantaCaves', 200, 'IT, Film, Textiles');
INSERT INTO state_info values(15, 'Manipur','Imphal', 'Manipuri', 'La. Ganesan', 50000, 30000000000, 3000000, '22327kM', 'Imphal', 1972,'Kangla Fort',30,'Handicrafts'), (16, 'Meghalaya', 'Shillong', 'English', 'Phylla Syiem', 55000, 20000000000, 3500000, '22429KKm', 'Shillong', 1972,'Cherrapunji', 40,'Tourism, Agriculture');
INSERT INTO state_info values(17, 'Mizoram','Aizawl', 'Mizo', 'Kambhampati HariBabu', 45000, 10000000000, 1200000, '21081Km', 'Aizawl', 1987,'Mizoram Museum',20,'Agriculture'), (18, 'Nagaland', 'Kohima', 'English', 'Jagdish Mukhia', 50000, 15000000000, 2200000, '16579KKm', 'Dimapur', 1963,'KohimaWarCemetery', 25,'Agriculture');
INSERT INTO state_info values(19, 'Odisha','Bhubaneswar', 'Oriya', 'Ganeshi Lal Yadav', 55000, 70000000000, 46000000, '155707Km', 'Bhubaneswar', 1936,'Chilika Lake',80,'Mining'), (20, 'Punjab', 'Chandigarh', 'Punjabi', 'Banwarilal Purohit', 65000, 120000000000, 30000000, '50362KKm', 'Ludhiana', 1966,'Golden Temple', 70,'Manufacturing');

alter table state_info rename column largest_city to Major_city;
alter table state_info rename column established_year to Formation_year;
alter table state_info rename column tourist_places to tourist_attraction;
alter table state_info rename column no_of_industries to Industries_count;
alter table state_info rename column gdp to economic_output;

update state_info set economic_output = 80000000000 where state_id = 17;
update state_info set governor = 'Kalraj Mishra' where state_name = 'Haryana';
update state_info set Industries_count = 85 where area = '307713KKm';
update state_info set population = 590000000 where state_name = 'Karnataka';
update state_info set major_industries = 'Aerospace Industries' where state_id = 11; 
update state_info set state_capital = 'Manglore' where state_id = 11;
update state_info set average_incomme = 314476 where state_id = 11;
update state_info set area = '5635Km' where state_id = 20;
update state_info set Formation_year = 1988 where state_id = 5;
update state_info set tourist_attraction = null where state_id = 8;

delete from state_info where Industries_count between 50 and 60;
delete from state_info where state_id = 12;
delete from state_info where state_capital = 'Panaji';
select count(*) from state_info;

select * from state_info where state_id between 1 and 10 and economic_output between 100000000000 and 130000000000;

select * from state_info where Industries_count in (70, 100, 150);

select * from state_info where economic_output not in (40000000000, 10000000000, 70000000000); 


use StateInformation;


alter table scam_info add column scam_origin varchar(10);
alter table scam_info add column operating_year int;
alter table scam_info add column scam_status varchar(20);
alter table scam_info add column case_close_date date;
alter table scam_info add column reported_state varchar(20);



insert into scam_info (scam_id, scan_name, victim, reported_case, loss, year_of_scam, reported_date, judgemet, operating_year, scam_status)
values(1,'BMTC scam', 'Suresh', 20, 2222.548, 2015, '2015-08-10', 'Not declared', 2015-2016, 'inactive');  
insert into scam_info (scam_id, scan_name, reported_case, year_of_scam, reported_date, operating_year, scam_status, case_close_date,reported_state)
values(2, 'PWD scam', 25, 2018, '2018-04-27', 2018-2022, 'Inactive', '2022-07-24', 'Andra Pradesh');  
insert into scam_info(scam_id, reported_date, operating_year, judgemet, case_close_date, reported_state)
values(3, '2022-01-25', 2024, '5yearsofimprisonment', '2024-08-06', 'Tamilnadu');
insert into scam_info(scam_id, scan_name, victim, reported_date, loss, year_of_scam, action_taken, operating_year, reported_state)
values(4, 'Forest scam', 'Girish', '2015-08-10', 56000.247, 2015, 'Investigation', 2016, 2015); 
insert into scam_info(scam_id, scan_name, victim, reported_case, loss, year_of_scam, reported_date, scam_status, case_close_date, reported_state)
values(5, 'Railway scam', 'Prakash', 78, 555555.6897, 2017, '2018-4-09', 'active', '2022-10-09', 'Kerala');
insert into scam_info values(6, 'Hydro power scam', null, 'Rahul', 35, 25896314.258, 2012, 'Investigation', '2012-10-7', 'Improsonment', null, 2020, 'Inactive', '2020-12-30', 'Maharastra');
insert into scam_info values(7, 'Electricity scam', null, 'Girish najraj', 14, 349796314.258, 2020, null, '2020-12-21', null , null, null, 'Active', null, 'UP');
insert into scam_info values(8, 'School scam', null, 'Najraj', 35, 59796314.258, 2010, 'Investigation', '2011-12-21', 'Not declared' , null, 2011, 'Active', null, 'Kranataka');
insert into scam_info values(9, null, null, 'Rajesh', 10, 455879.245, 2020, 'Investigation', '2020-10-9', 'Not declared', null, 2021, 'Active',null, 'Madya Prdesh');
insert into scam_info values(10, 'KSRTC scam', null, 'Rakesh', 5, 85792.215, 2005, null, '2006-10-9', 'Pending', null, 2015, 'Active', null, 'Karnataka');
insert into scam_info values(11, 'Bank Fraud', NULL, 'Rajesh', 20, 1200000.00, 2008, 'Investigation', '2009-04-15', 'Pending', NULL, 2016, 'InActive', NULL, 'Maharashtra');
insert into scam_info values(12, 'Insurance Scam', NULL, 'Rohan', 15, 600000.50, 2010, 'Investigation', '2011-08-23', 'Under Investigation', NULL, 2017, 'InActive', '2020-9-8', 'Tamil Nadu');
insert into scam_info values(13, 'OnlineShoppingFraud', NULL, 'Online Shoppers', 50, 300000.75, 2012, 'Uder investigation', '2013-05-14', 'Closed', NULL, 2018, 'Inactive', NULL, 'Delhi');
insert into scam_info values(14, 'Timber scam', NULL, 'Forest minister', 103, 20000000.00, 2013, null, '2014-07-20', 'Pending', NULL, 2020, 'Active', NULL, 'Gujarat');
insert into scam_info values(15, 'Incometax Fraud', null, 'DK Shivkumar', 200, 5642293.2457, 2012, 'Undre Investigation','2010-10-01', 'Not declared', null, 2024, 'Active', null, 'Karnataka');
insert into scam_info values(16, 'Nandhini milk scam', null, null, null, 546781.2356, 2020, 'Investgationover', '2020-10-10','Declared', null, null, 'Completed', '2021-12-16', null);
insert into scam_info values(17, 'Honey trapping', null, 'Priya', 57, null, 2018, 'under investigation', '2019-07-27', '10yearsimprisonmet', null, null, 'Completed', '2020-05-30', 'Rajastan');
insert into scam_info values(18, 'Coal scam', null, 'Ragav', 60, 60645.2349, 2020, 'under investigation', '2021-09-01', 'Not declared', null, 2023, 'Inactive', null, 'Haryana');


update scam_info set reported_case = 70 where scam_id =18;
update scam_info set loss = 47895485600.23498 where scan_name = 'Hydro power scam';
update scam_info set year_of_scam = 2005 where reported_date = '2015-08-10';
update scam_info set judgemet = 'Declared' where scam_id = 18;
update scam_info set scam_status = 'active' where scan_name = 'Coal scam';
update scam_info set operating_year = 2017 where scam_id = 5;
update scam_info set loss = 2348936.248 where year_of_scam =2018;
update scam_info set action_taken = 'Uderinvestigaion'  where scam_id =10;
update scam_info set reported_state = 'Madya Pradesh' where scam_id = 15;
update scam_info set judgemet = 'case clodsed' where reported_case = 60;

alter table scam_info rename column reported_case to noofcases;
alter table scam_info rename column action_taken to lieagl_action_taken;


delete from scam_info where noofcases between 60 and 70;
delete from scam_info where year_of_scam between 2020 and 2024;
rollback;
delete from scam_info where scam_status = 'Active';

select * from scam_info;

select * from scam_info where noofcases = 65 and scam_id = 18;
select * from scam_info where noofcases in (60, 75);
select * from scam_info where noofcases not in (60, 103);