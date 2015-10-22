===== CRUD =====
user == schema의 CRUD
Create : create user NAME identified by PASS;
Read : show user;
Update : alter user hr identified by hr account unlock; 
		-- 오라클에서 교육용으로 제공하는 스키마 hr을 사용할 수 있도록 변경함 --
Delete : drop user NAME cascade;



=====CRUD======
table의 CRUD
Create : create table NAME;
Read : desc NAME;
Update(수정) : rename NAME1 to NAME2;
Delete : 테이블 자체를 삭제함(철거) : drop table NAME;
         테이블 데이터만 삭제(공실) : truncate table NAME;


column의 CRUD

Create : alter table NAME add(TEST varchar2(20));
Read : 없다고 할 수 있음.
Update : 타입 수정 => alter table NAME modify(TEST number); // TEST는 칼럼 이름
         이름 수정 => alter table NAME rename column NAME1 to NAEM2 ;
Delete : alter table NAME drop column TEST;



===================

data의 CRUD
NAME: 테이블 이름
USERID: 컬럼 이름

Create(생성) : insert into NAME values(' ', ' ', ' ', ...);
Read(조회) : select * from NAME; (NAME = table name) ;
Update(수정) : update NAME set TEST = 'kang', .... ;
                        where USERID = 'hong' ;
Delete(삭제) : delete from (NAME) where (USERID) = 'hong';
