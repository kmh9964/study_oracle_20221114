--6장. 서브쿼리 (Sub Query)
[예제 6-11]
평균 급여보다 더 적은 급여를 받는 사원의 사번, 이름, 성 정보를 조회

--일반 쿼리를 이용해서 조회해보자
SELECT ROUND(AVG(salary)) avg_sal  --평균 급여를 알아보는 함수 AVG사용,ROUND는 반올림 하는 함수, i를 생략해서 바로 반올림
FROM employees;--평균급여 6462

SELECT employee_id, first_name, last_name
FROM employees
WHERE salary < 6462
ORDER BY  1;

--서브쿼리를 이용해서 해보자
SELECT employee_id, first_name, last_name
FROM employees
WHERE salary < (SELECT ROUND(AVG(salary)) 
                FROM employees);

[예제 6-2]
월급여가 가장 많은 사원의 사번, 이름, 성 정보 조회
--일반 쿼리를 이용해서 조회
SELECT MAX(salary) -- 가장 많은 급여를 조회해야 되서 MAX 함수 사용
FROM employees;--24000

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary = 24000;--king 1명 나옴

--서브쿼리를 이용해서 조회
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary)
                FROM employees);--KING 1명 나옴

--서브쿼리를 이용해서 가장 적은 월급여를 받는 사람 조회
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary = (SELECT MIN(salary)
                FROM employees);--Olsen 1명 나옴

--일반쿼리를 이용해서 가장 적은 월급여를 받는 직원 조회
SELECT MIN(salary)  --가장 적은 급여를 알아야되니 MIN함수 사용해서 조회
FROM employees;--2100

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary = 2100;--Olsen 1명 나옴

[예제 6-3]
108번 사원의 급여보다 더 많은 급여를 받는 사원의 사번, 이름, 급여를 조회
SELECT salary
FROM employees
WHERE employee_id=108;  --12008

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 12008;--6명 나옴

--서브쿼리를 이용해서 조회
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > (SELECT salary 
                FROM employees 
                WHERE employee_id=108);--6명

[예제 6-4]
월급여가 가장 많은 사원의 사번, 이름, 성, 업무제목을 조회
--월급여 최고 금액
SELECT MAX(salary) -- 가장 많은 급여를 조회해야 되서 MAX 함수 사용
FROM employees;--24000
--사번의 업무 제목을 조회-->JOIN연산자 사용
SELECT e.employee_id, e.first_name, e.salary,
        j.job_title
FROM   employees e,jobs j
WHERE  e.job_id = j. job_id  --join연산 조건절
AND e.salary = 24000; --일반 조건절, steven 1명 나옴

--위의 내용을 서브쿼리를 이용해서 조회해보자
SELECT e.employee_id,e.last_name, e.salary,
        j.job_title
FROM   employees e,jobs j
WHERE  e.job_id = j. job_id  --join연산 조건절
AND     e.salary = (SELECT MAX(salary)
                   FROM employees);--steven 1명 나옴
