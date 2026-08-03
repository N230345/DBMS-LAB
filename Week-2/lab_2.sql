use taxsystem;
alter table Income_Record drop column category_name;
alter table income_record drop column financial_year;
alter table Income_record add column category_id int ;
alter table Income_record add column year_id int;
alter table Income_record 
	add constraint fk_taxpayer_record
    foreign key (taxpayer_id) references taxpayer(taxpayer_id);
    
alter table Income_record 
	add constraint fk__category_record
    foreign key (category_id) references income_category(category_id);
    
alter table Income_record 
	add constraint fk__year_record
    foreign key (year_id) references financial_year(year_id);
select * from  Income_record;

UPDATE income_record 
SET 
    category_id = CASE income_id
        WHEN 1001 THEN 1
        WHEN 1002 THEN 1
        WHEN 1003 THEN 2
        WHEN 1004 THEN 1
        WHEN 1005 THEN 2
        WHEN 1006 THEN 2
        end,
	year_id=6
    where income_id in(1001,1002,1003,1004,1005,1006);
    
select * from  Income_record;
insert into income_record values
(1007,999,"Chef",230000.00,"2026-01-26",null,1,6);
insert into income_record values
(1007,101,"Chef",230000.00,"2026-01-26",null,20,6);
insert into income_record values
(1007,101,"Chef",230000.00,"2026-01-26",null,1,15);
delete from taxpayer
where taxpayer_id=101;
delete from income_category
where category_id=2;
select distinct occupation from taxpayer;
use taxsystem;
select distinct  category_name from income_category;

select distinct year_label from financial_year;
select distinct income_source from income_record;
SELECT t.full_name
FROM Taxpayer t
JOIN Income_record i
ON t.taxpayer_id = i.taxpayer_id
WHERE i.category_id = 1

UNION

SELECT t.full_name
FROM Taxpayer t
JOIN Income_record i
ON t.taxpayer_id = i.taxpayer_id
WHERE i.category_id = 2;

select income_source from income_record where year_id=5
union
select income_source from income_record where year_id=6;


select full_name from taxpayer where occupation="teacher"
union
select occupation from taxpayer where occupation="softwareEngineer";

SELECT DISTINCT t.full_name
FROM Taxpayer t
JOIN Income_record s
ON t.taxpayer_id = s.taxpayer_id
JOIN Income_record b
ON t.taxpayer_id = b.taxpayer_id
WHERE s.category_id = 1
AND b.category_id = 2;

SELECT DISTINCT t.full_name
FROM Taxpayer t
JOIN Income_record s
ON t.taxpayer_id = s.taxpayer_id
JOIN Income_record b
ON t.taxpayer_id = b.taxpayer_id
WHERE s.year_id = 5
AND b.year_id = 6;

SELECT taxpayer_id
FROM Income_record
WHERE category_id=1
AND taxpayer_id NOT IN
(
    SELECT taxpayer_id
    FROM Income_record
    WHERE category_id=2
);

SELECT taxpayer_id
FROM Income_record
WHERE year_id=6
AND taxpayer_id NOT IN
(
    SELECT taxpayer_id
    FROM Income_record
    WHERE year_id=5
);

select full_name
from taxpayer 
where taxpayer_id
AND taxpayer_id  in 
(
select taxpayer_id
from income_record
);

select full_name
from taxpayer
where taxpayer_id 
AND taxpayer_id  in 
(
select taxpayer_id
from income_record
where category_id=2
);

select full_name
from taxpayer 
where taxpayer_id
AND taxpayer_id not  in 
(
select taxpayer_id
from income_record
);

select full_name
from taxpayer
where taxpayer_id 
AND taxpayer_id not in 
(
select taxpayer_id
from income_record
);

SELECT full_name
FROM taxpayer t
WHERE EXISTS
(
    SELECT i.taxpayer_id
    FROM income_record i
    where i.taxpayer_id =t.taxpayer_id
    

);
select * from taxpayer;
select * from income_record;

SELECT year_label
FROM financial_year t
WHERE EXISTS
(
    SELECT *
    FROM income_record i
    WHERE i.year_id =t.year_id
    
);

SELECT full_name
FROM taxpayer t
WHERE not  EXISTS
(
    SELECT i.taxpayer_id
    FROM income_record i
    where i.taxpayer_id =t.taxpayer_id
    

);

select category_name
from income_category t
where not exists
(
	select category_id
    from income_record i
    where i.category_id=t.category_id
);

select full_name
from taxpayer
where annual_income > any
(
	select annual_income
    from taxpayer
    where occupation="teacher"
);

select full_name
from taxpayer 
where annual_income > any
(
	select t.annual_income
    from taxpayer t
    join income_record i
    on t.taxpayer_id = i.taxpayer_id
    where category_id=2
);

select full_name
from taxpayer
where annual_income > all
(
	select annual_income
    from taxpayer
    where occupation="teacher"
);

select full_name
from taxpayer 
where annual_income > all
(
	select t.annual_income
    from taxpayer t
    join income_record i
    on t.taxpayer_id = i.taxpayer_id
    where category_id=2
);


select * from income_record;

use taxsystem;
SELECT *
FROM Taxpayer
ORDER BY full_name ASC;

SELECT *
FROM Taxpayer
WHERE annual_income > 800000;

SELECT *
FROM Taxpayer
WHERE occupation = 'SoftwareEngineer';

SELECT ir.*
FROM Income_Record ir
JOIN Income_Category ic
ON ir.category_id = ic.category_id
WHERE ic.category_name = 'Business';

SELECT *
FROM Income_Record
WHERE amount BETWEEN 500000 AND 1000000;

SELECT *
FROM Taxpayer
WHERE full_name LIKE 'A%';

SELECT *
FROM Taxpayer
WHERE is_active = 1;

SELECT COUNT(*)
FROM Taxpayer;

SELECT MAX(annual_income)
FROM Taxpayer;

SELECT full_name, annual_income
FROM Taxpayer
ORDER BY annual_income DESC
LIMIT 1;

SELECT ic.category_name, COUNT(*) AS total_records
FROM Income_Record ir
JOIN Income_Category ic
ON ir.category_id = ic.category_id
GROUP BY ic.category_name
ORDER BY total_records DESC
LIMIT 1;

SELECT occupation, COUNT(*) AS total_taxpayers
FROM Taxpayer
GROUP BY occupation;

SELECT COUNT(*) AS active_taxpayers
FROM Taxpayer
WHERE is_active = 1;



use taxsystem;

SELECT ic.year_label, COUNT(*) AS total_records
FROM Income_Record ir
JOIN financial_year ic
ON ir.year_id = ic.year_id
GROUP BY ic.year_label
ORDER BY total_records DESC
LIMIT 1;




















      
 
    


