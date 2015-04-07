delimiter //
drop procedure if exists samename;
drop procedure if exists averagesalary;
drop procedure if exists countgender;

create procedure samename(in commonname varChar(30)) 
begin 
select first_name,last_name from employees where first_name = commonname or last_name = commonname; 
end//

delimiter ;

delimiter //
create procedure averagesalary(in dept_idval char(30)) 
begin
select avg(salary) from salaries where emp_no in(select emp_no from dept_emp where dept_no = dept_idval); 
end//

delimiter ;

delimiter //
create procedure countgender(in G enum('M','F'))
begin
select count(*) from employees where gender = G;
end//

delimiter ;

