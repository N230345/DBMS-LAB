use taxsystem;
show tables;
select upper(full_name)
from taxpayer;

select lower(occupation)
from taxpayer;

select length(full_name)
from taxpayer;

select left(pan_number,4)
from taxpayer;

select concat(full_name,'-',occupation)
from taxpayer;

select replace(category_name,"Income","Inc.")
from income_category;

select trim(full_name) from taxpayer;

select left(full_name,locate(" ",full_name)-1) from taxpayer;

select left(full_name,instr(full_name," ")-1) as first_name  from taxpayer;

select concat("Taxpayer : ",full_name,"Occupation : ",occupation) from taxpayer;

select round(annual_income) from taxpayer;

select abs(annual_income-500000) from taxpayer;

select power(annual_income,2) from taxpayer;

select mod(annual_income,1000) from taxpayer;

select round(annual_income,2) from taxpayer;

select ceil(annual_income) from taxpayer;

select floor(annual_income) from taxpayer;

SELECT FLOOR(RAND()*100)+1 as random_number;

select sqrt(annual_income) from taxpayer;

select annual_income*1.01 as 10percent_increment from taxpayer;

select current_date();

select now();

select year(start_date) from financial_year;

select month(start_date) from financial_year;

select day(curdate());

select end_date, date_add(start_date,interval 1 year) from financial_year;

select date_add(start_date,interval 30 day) from financial_year;

select date_sub(start_date,interval 7 day) from financial_year;

select datediff(curdate(),start_date) from financial_year;

select year_label from financial_year where year(curdate())=year(end_date);

select cast(annual_income as signed) from taxpayer;

select cast(taxpayer_id as char) from taxpayer;

select cast(start_date as datetime) from financial_year;

select cast(annual_income as decimal(12,2)) from taxpayer;

select cast(annual_income as char) from taxpayer;

select CAST(annual_income AS DECIMAL(12,2))*0.10  from taxpayer;


















