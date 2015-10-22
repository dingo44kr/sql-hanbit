-- Q1. 오늘 날짜를 2015-10-21 로 출력

-- A1.
select to_char(sysdate, 'YYYY-MM-DD')
from dual;


create table Member(
-- 다른 컬럼 생략
  regdate varchar2(20) not null; -- 이렇게 줬었는데.
  regdate date not null; -- 이렇게 바꿀 수 있음
);



-- 출력:
select to_char(regdate, 'YYYY-MM-DD') as regdate, name
from member;
-- 15/10/21 => 2015-10-21
