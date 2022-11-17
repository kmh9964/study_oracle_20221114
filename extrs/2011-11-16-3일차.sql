--

/*==========================================
1)컬럼, 숫자, 문자
2)산술연산자:=,-,*,/, 비교연산자 :=,>=,>+,<,>
3)AND,OR,NOT:논리연산자
4)LIKE,
==========================================*/

2.3 연산자
2.3.1 산술연산자 : +,-,*,/
--select,where절에서 할수 있음
SELECT 2 + 2, 2 - 1, 2 * 3, 4 / 2
FROM dual;--가짜 테이블(길제 존재하지 않는 가상의 테이블인 dual로 연산처리)

[예제2-4] 80번의 부서 사원의 한해 동안 받은 급여(=연봉)을 조회하시오
--사원들의 정보는 EMPLOYESS 라는 테이블에 저장되어 있음.
--사원이 근무하는 부서의 정보는 DEPARTMENT 라는 테이블에 저장되어 있음.
SELECT  employee_id, last_name, salary * 12 "Annual Salary" --별칭에 공백이 있을때는 ""묶어주기 
FROM    employees
WHERE   department_id = 80;


SELECT department_id, department_name, manager_id
FROM departments
WHERE department_id = 80;

[예제2-2] 전체 사원들 중 한해 동안 받은 급여가 120000원인 사람을 조회하시오.
SELECT * 
FROM    employees
WHERE   salary*12 = 120000;

2.3.2 연결 연산자 :  ||
SELECT employee_id, first_name || last_name full_name--연결연산자
FROM  employees;

[예제2-6] 사번이 101번인 사원의 성명을 조회하시오
SELECT employee_id 사번, first_name ||' '|| last_name 성명, department_부서
FROM employees
WHERE employee_id = 101;


[예제2-8] 사번이 101인 사원의 정보 중 사번,성명,연봉,부서를 조회하시오
SELECT  'hanul' company, employee_id, first_name ||' '||last_name, salary * 12 as "Annual Salary", department_id
FROM    employees
WHERE   employee_id = 101;

[예제 2-9]급여가 3000이하인 사원의 정보 조회한다
SELECT   employee_id emp_id, last_name, salary, department_id
FROM    employees
WHERE   salary <= 3000;

SELECT  *
FROM    departments
WHERE   department_id =50;

[예제2-10]부서 코드가 80번 초과인 사원의 정보를 조회하시오
SELECT  employee_id emp_id, first_name||' '||last_name, salary, department_id
FROM    employees
WHERE   department_id > 80;








