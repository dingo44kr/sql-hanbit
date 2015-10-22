-- Q1. 사원번호, 패밀리 네임, 연봉을 출력. (2번코딩이 답)
-- Q2. 연봉 3000 이상의 직원들을 출력.
-- Q3. 부서번호가 100번인 직원 출력.
-- Q4. 패밀리네임이 King 인 직원 출력.
-- Q5. 2000년 1월 1일 이후 입사한 직원 출력.
-- Q6. 100번 부서의 매니저는 누구?
-- Q7. 100번 부서 직원 전부와 이 회사 매니저 전부는 ?
-- Q8. 10번 부서가 아닌 직원 전부는 ?
-- Q9. 연봉 2000 ~ 3000 직원?
-- Q10. 연봉 2000 미만, 3000 초과하는 직원?
-- Q11. 커미션이 0.2, 0.3, 0.4인 직원 출력
-- Q12. 커미션이 0.2, 0.3, 0.4가 아닌 직원 출력
-- Q13. 패밀리네임이 k로 시작하는 직원? ... (Ex. 한국식으로는 김씨 직원 전부?)
-- Q14. 패밀리네임 중에 a가 포함되어 있는 직원? ... (Ex. 한국식으로는 성은 모르겠고, 뒤 이름이 머시긴가 하는 직원 직원 전부?)
-- Q15. 패밀리네임 중에 a가 3번째 글자에 포함된 직원(와일드카드를 사용)?
-- Q16. 직원중에 구글 계정을 사용하는 직원?
-- Q17. 커미션을 받지 않는 직원?
-- Q18. 커미션을 받는 직원?
-- Q19. 연봉 적게 받는 순으로 직원 정렬? 오름차순
-- Q20. 고액 연봉순으로 직원 정렬? 내림차순
-- Q21. 고액 연봉순으로 직원 정렬(동일 연봉이면 이름으로 오름차순 정렬)?


-- A1.
select employee_id, last_name, salary from employees;

-- A2.
select * from employees
where salary >= 3000;

-- A3.
select * from employees
where department_id = 100;

-- A4.
select * from employees
where  last_name = 'King';

-- A5.
select * from employees
where hire_date >= '03/01/01' -- 이후 라면 크거나 같아야 함.

-- A6.
select * from employees
where department_id = 100 and job_id = 'FI_MGR' 


-- A7.
select * from employees
where department_id = 100 or job_id = 'FI_MGR' 

-- A8. //세 구문 전부 다 똑같은 결과
select * from employees
where not department_id = 100;

select * from employees
where department_id <> 100;

select * from employees
where department_id != 100;

-- A9.
select * from employees
where salary >= 2000 and salary<=3000;

select * from employees
where salary between 2000 and 3000;


-- A10.
select * from employees
where salary not between 2000 and 3000;

-- A11.
select * from employees
where commission_pct in(0.2, 0.3, 0.4);

-- A12.
select * from employees
where commission_pct not in(0.2, 0.3, 0.4);

-- A13.
select * from employees
where last_name like 'k%'; --p.117쪽 (오라클 11g 책)

-- A14.
select * from employees
where last_name like '%a%';


-- A15.
select * from employees
where last_name like '__a%'; --언더스코어 2개씀, 그러므로 3번째 자리에 a가 포함된 고용인들을 검색.

-- A16.
select * from employees
where email like '%\@gmail.com%'; -- hr 계정에서 테스트 안됨.


-- A17.
select * from employees
where commission_pct is null;


-- A18
select * from employees
where commission_pct is not null;


-- A19
select * from employees
order by salary asc; -- 오름차순, asc 를 생략해도 동일함.

-- A20
select * from employees
order by salary desc; -- 내림차순


-- A21
select * from employees
order by salary desc, last_name asc; -- asc 오름차순(문자에서는 알파벳순 a,b,c,d 를 말함), desc 내림차순(알파벳 역순) // 여기서도 asc 생략해도 동일함(order by는.
