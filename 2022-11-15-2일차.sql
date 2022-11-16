desc countries;

/*
이름           널?       유형           
------------ -------- ------------ 
COUNTRY_ID   NOT NULL CHAR(2)      :국가의 코드
COUNTRY_NAME          VARCHAR2(40) :국가의 이름
REGION_ID             NUMBER        국가가 포함된(=소속된) 대륙 코드
*/
DESC countries;
/*
desc DEPARTMENTS;
이름              널?       유형           
--------------- -------- ------------ 
DEPARTMENT_ID   NOT NULL NUMBER(4)    :아이디
DEPARTMENT_NAME NOT NULL VARCHAR2(30)  :부서
MANAGER_ID               NUMBER(6)    :사원 이름
LOCATION_ID              NUMBER(4)    :지역 코드

desc EMPLOYEES;
이름             널?       유형           
-------------- -------- ------------ 
EMPLOYEE_ID    NOT NULL NUMBER(6)    :사원의 아이디(사번)
FIRST_NAME              VARCHAR2(20) :사원의 이름
LAST_NAME      NOT NULL VARCHAR2(25) :사원의 성
EMAIL          NOT NULL VARCHAR2(25) :사원의 이메일
PHONE_NUMBER            VARCHAR2(20) :사원의 전화번호
HIRE_DATE      NOT NULL DATE         :입사일
JOB_ID         NOT NULL VARCHAR2(10) :업무코드
SALARY                  NUMBER(8,2)  :월 급여 
COMMISSION_PCT          NUMBER(2,2)  :상여율
MANAGER_ID              NUMBER(6)    :매니저 아이디
DEPARTMENT_ID           NUMBER(4)    :소속 아이디
*/
desc JOB_HISTORY;

SELECT * FROM COUNTRIES;

[예제 2-1] employees 테이블의 구조를 조회하시오.
desc employees;

SELECT * 
FROM employees;

desc EMPLOYEES;

SELECT employee_id, first_name, last_name, salary
FROM employees; 


select
from
where

80번 부서원의 사원정보 조회
select * 
from employees
where department_id = 80; --같다 연산자 : =

전체 부서는 몇개인가?

desc    departments;

select  *
from    departments;






