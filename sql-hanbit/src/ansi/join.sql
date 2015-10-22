-- Q1. 직원과 부서 전부 출력(크로스조인으로 두 테이블 전체를 출력하시오)
-- Q2. 직원과 그 직원이 근무하는 부서명 출력(이너조인으로 출력)
-- Q3. 직원과 그 직원이 근무하는 부서명 출력(이너조인+ using 으로 출력)
-- Q4. 직원과 그 직원이 근무하는 부서명 출력(내츄럴 조인으로 출력)
-- Q5. 각각의 직원이 근무하는 부서를 모두 출력하고, 직원이 없는 부서도 출력하시오.
-- Q6. 부서가 배치된 직원 리스트.
-- Q7. 직원이 없는 부서.
-- Q8. 부서가 없는 직원(프리랜서).


-- A1. 직원과 부서 전부 출력(크로스조인으로 두 테이블 전체를 출력하시오)
select * from employees cross join departments;

-- A2. 직원과 그 직원이 근무하는 부서명 출력(이너조인으로 출력)
select * 
from employees inner join departments
on employees.department_id = departments.department_id
where employees.last_name = 'Popp';

select * 
from member m inner join score s
on m.userid = s.userid;
where m.userid = 'hong';


-- A3. 직원과 그 직원이 근무하는 부서명 출력(이너조인+ using 으로 출력)
select *
from employees e inner join departments d
using (department_id)
where e.last_name = 'Popp';

-- A4. 직원과 그 직원이 근무하는 부서명 출력(내츄럴 조인으로 출력)
select * 
from Employees a natural join Departments d
where e.last_name = 'Popp';


-- A5. -- Q5. 각각의 직원이 근무하는 부서를 모두 출력하고, 직원이 없는 부서도 출력하시오.
select *
from departments d1 left outer join departments d2
on d1.department_id = d2.department_id;



-- A6. // 부서가 배치된 직원 리스트.
select*
from deoartments d left outer join employees e
on d.department_id = e.department_id;
where E.DEPARTMENT_ID is not null;


-- A7  직원이 없는 부서.
select*
from departments d left outer join employees e
on d.department_id = e.department_id;
where E.DEPARTMENT_ID is null;



-- A8. 부서가 없는 직원(프리랜서).
select*
from departments d right outer join employees e
on d.department_id = e.department_id
where E.DEPARTMENT_ID is null;


