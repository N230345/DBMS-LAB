use taxsystem;
select t.full_name,i.income_source from taxpayer t inner join  income_record i on i.taxpayer_id=t.taxpayer_id;

select full_name,c.category_name from taxpayer t inner join income_category c 
inner join income_record r on t.taxpayer_id=r.taxpayer_id and r.category_id=c.category_id;

select r.*,f.year_label from income_record r inner join financial_year f on r.year_id=f.year_id;

select t.full_name,t.annual_income,r.amount from taxpayer t inner join income_record r on t.taxpayer_id=r.taxpayer_id;

select r.income_source,t.full_name,f.year_label,c.category_name from income_record r
inner join taxpayer t 
inner join financial_year f
inner join income_category c
on t.taxpayer_id=r.taxpayer_id and r.category_id=c.category_id and f.year_id=r.year_id;

select t.full_name,i.income_source from taxpayer t
inner join income_record i
inner join income_category c
on t.taxpayer_id=i.taxpayer_id where c.category_id=i.category_id and c.category_name="Salary";

select  t.full_name,t.occupation,i.income_source from taxpayer t
inner join  income_record i
inner join income_category c
on t.taxpayer_id=i.taxpayer_id where c.category_id=i.category_id and c.category_name="Business";

select t.*,f.year_label,f.start_date,f.end_date from taxpayer t
inner join financial_year f
inner join income_record r
on f.year_id = r.year_id and r.taxpayer_id=t.taxpayer_id;

select t.*,c.description from taxpayer t
inner join income_category c
inner join income_record r
on c.category_id = r.category_id and r.taxpayer_id=t.taxpayer_id;




select t.full_name,t.pan_number,t.occupation,r.income_source,i.category_name,r.amount,f.year_label,f.start_date,f.end_date from taxpayer t
inner join income_record r
inner join income_category i
inner join financial_year f
on r.taxpayer_id=t.taxpayer_id and r.category_id=i.category_id  where r.year_id=f.year_id;


select * from taxpayer t left join income_record r on t.taxpayer_id=r.taxpayer_id;

select * from income_record r right join income_category c on c.category_id=r.category_id;
 
 select * from taxpayer t left join income_record r on t.taxpayer_id=r.taxpayer_id union 
 select * from taxpayer t right join income_record r on t.taxpayer_id=r.taxpayer_id;
 
 select * from taxpayer t cross join financial_year f ;
 
 select t.full_name,r.full_name from taxpayer t cross join taxpayer r 
 on t.occupation=r.occupation where t.taxpayer_id != r.taxpayer_id;
 
select t.full_name,t.pan_number,r.income_source,i.category_name,f.year_label from taxpayer t
inner join income_record r
inner join income_category i
inner join financial_year f
on r.taxpayer_id=t.taxpayer_id and r.category_id=i.category_id  where r.year_id=f.year_id;

select t.full_name ,c.category_name,c.description from taxpayer t
 inner join income_record r
 inner join income_category c
 on r.taxpayer_id=t.taxpayer_id and r.category_id=c.category_id;
 
 select i.income_source,f.year_label from income_record i
 inner join financial_year f
 on i.year_id=f.year_id;
 
 select t.full_name from taxpayer t 
 inner join income_record r
 inner join income_category c
 inner join financial_year f
 on t.taxpayer_id=r.taxpayer_id and r.category_id=c.category_id and r.year_id=f.year_id
 where c.category_name="Business" and f.year_label="2025-2026";
 
 select * from taxpayer t
 inner join financial_year f
 inner join income_record r
 inner join income_category c
 on t.taxpayer_id=r.taxpayer_id and r.category_id=c.category_id and r.year_id=f.year_id;

 
 
 
 





