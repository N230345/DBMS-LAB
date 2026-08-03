create database taxsystem;
use taxsystem;
create table taxpayer(
taxpayer_id int primary key,
pan_number varchar(10) unique,
full_name varchar(100) ,
date_of_birth date ,
occupation varchar(50),
annual_income decimal(12,2),
email varchar(100) unique,
is_active boolean 
);
insert into taxpayer values
(101,'ABCDE1234F','RaviKumar','1995-06-15','SoftwareEngineer',850000.00,'ravikumar@example.com',true),
(102,'BCDEF2345G','PriyaSharma','1992-11-22','Doctor',1200000.00,'priya.sharma@example.com',true);
alter table taxpayer modify full_name varchar(100) not null ;
alter table taxpayer 
modify occupation varchar(50) not null,
modify date_of_birth date not null,
modify annual_income decimal(12,2) not null;
insert into taxpayer values
(103,'CDEFG3456H','ArjunReddy','1988-03-10','BusinessOwner',1800000.00,'arjun.reddy@example.com',true),
(104,'DEFGH4567J','SnehaPatel','1988-08-05','Teacher',620000.00,'sneha.patel@eaxmple.com',true),
(105,'EFGHJ5678K','KiranRao','1990-01-18','Freelancer',750000.00,'kiran.rao@example.com',true),
(106,'FGHJK6789L','MeeraSingh','1985-12-30','Consulatant',1500000.00,'meera.singh@example.com',false);
update taxpayer set email='ravi.kumar@example.com' where taxpayer_id=101;



create table Income_Category(
category_id int primary key,
category_name varchar(50) not null unique,
description varchar(200) not null,
taxable boolean
);
insert into Income_Category values
(1,'Salary','income received from employment',true),
(2,'Business','Income earned from business activities',true),
(3,'House Property','Income received from property or rent',true),
(4,'Capital Gains','Income from transfer of eligible assets',true),
(5,'Other Sources','Income such as bank interest',true),
(6,'Agriculture Income','Income from eligible agricultural activities',false);
create table Financial_Year(
year_id int primary key,
year_label varchar(9) not null unique,
start_date date not null,
end_date date not  null,
filing_deadline date,
is_current boolean

);

insert into Financial_Year values
(1,'2020-2021','2020-04-01','2021-03-31','2021-07-31',false),
(2,'2021-2022','2021-04-01','2022-03-31','2022-07-31',false),
(3,'2022-2023','2022-04-01','2023-03-31','2023-07-31',false),
(4,'2023-2024','2023-04-01','2024-03-31','2024-07-31',false),
(5,'2024-2025','2024-04-01','2025-03-31','2025-07-31',false),
(6,'2025-2026','2025-04-01','2026-03-31','2026-07-31',true);
 create table Income_Record(
 income_id int primary key,
 taxpayer_id int not null,
 income_source varchar(100) not null,
 category_name varchar(50) not null,
 amount decimal(12,2) not null,
 received_date date not null,
 financial_year varchar(9) not null
 
 );
 insert into Income_Record values
 (1001,101,'TechNovaSolutions','Salary',850000.00,'2026-03-31','2025-2026'),
 (1002,102,'City Care Hospital','Salary',1200000.00,'2026-03-31','2025-2026'),
 (1003,103,'Reddy Enterprises','Business',1800000.00,'2026-03-31',2025-2026),
 (1004,104,'Sunrise School','Salary',620000.00,'2026-03-31','2025-2026'),
 (1005,105,'Web Design Projects', 'Business',750000.00,'2026-03-31','2025-2026'),
 (1006,106,'Professional Consulting','Business',1500000.00,'2026-03-31','2025-2026');
 
insert into taxpayer values
(107,'GHJKL7890M','RamaPatel','1993-08-23','Musicist',1200000.00,'rama.patel@example.com',true);
update taxpayer set annual_income=950000.00 where taxpayer_id=101;
update Income_Record set amount=950000.00 where income_id=1001;
update taxpayer  set occupation='Software Consultant' where taxpayer_id=105;
update taxpayer set is_active=true where taxpayer_id=106;
delete from taxpayer where taxpayer_id=107;
alter table taxpayer add phone_number int ;
alter table Income_Record add remarks varchar(25) ;
alter table taxpayer modify occupation varchar(100);
create table Tax_Office(
office_id int primary key,
office_name varchar(25) not null,
city varchar(15) not null
);
insert into Tax_Office values
(001,'ABC','kurnool'),
(002,'DEF','banagalore'),
(003,'GHI','Hyderabad');
truncate table Tax_Office;
drop table Tax_Office;
insert into taxpayer values
(101,'GHJKL7890M','RamaPatel','1993-08-23','Musicist',1200000.00,'rama.patel@example.com',true);
insert into taxpayer values 
(107,'ABCDE1234F','RamaPatel','1993-08-23','Musicist',1200000.00,'rama.patel@example.com',true);
insert into taxpayer values 
(107,'GHJKL7890M','1993-08-23','Musicist',1200000.00,'rama.patel@example.com',true);










