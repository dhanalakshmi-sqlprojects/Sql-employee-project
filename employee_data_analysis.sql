 
 -- 1 Creation  of table employee 
 CREATE table  employee (
 empid  int primary key,
 full_name varchar(20),
 salary int,
 deptId varchar(20),
 hiredate varchar(30));
 
 -- 2 alter the deptid column
 ALTER  TABLE  employee
 add column deptId varchar(10);
 
  -- 3  Inserting the values
  Insert into employee values
 (1,'Rama',25000,'April_07',101),
 (2,'Radha',30000,'May_02',102),
 (3,'saritha',21000,'november_04',102),
 (4,'Lukshman',40000,'jan_28',103),
 (5,'Sita',55000,'june_09',104),
 (6,'Ravi',60000,'july_13',101),
 (7,'jhon',34000,'feb_28',103);
 
  -- 3 view tha date 
 select * from employee;
 
 -- 4 maximum  salary
 select max(salary)
 from employee;
 
 -- 5 second maximum salary 
 select max(salary)
 from employee
 where salary<(select max(salary)
                from employee);
 
 -- 6 third maximum salary
  select deptId,max(salary)
  from employee
  group by deptId
  order by  max(salary)  desc
  limit 1 offset 2;
  
  
  --  7 Duplicate Employees ( dept)
   select deptId,count(*)
  from employee
  group by deptId
  having count(*)>1;
  
  -- 8  Employees earning more than average  salary
   select full_name,salary
   from employee
   where salary>(select avg(salary)
                 from employee);
                 
 -- 9 department wise average salary
select  deptId,avg(salary)
from employee 
group by deptId;


-- 10 department with highest average salary
 select deptId ,avg(salary)
 from employee
 group by deptId
 order by avg(salary) desc
 limit 1;


-- 11  employee with highest salary

select full_name,salary
from employee
where salary=(select max(salary)
              from employee);

