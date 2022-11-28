[연습문제5-1]
1.이름에 소문자v가 포함된 모든 사원의 사번, 이름, 부서명 조회
SELECT  e.employee_id, e.last_name,
        d.department_name
FROM    EMPlOYEES e, departments d 
WHERE   e.department_id = d.department_id(+)--null값도 포함해야되서 (+)를 해줌
AND    first_name like '%v%'--일반조건절
ORDER BY 1;

2.커미션을 받는 사원의 사번, 이름, 급여, 커미션 금액, 부서명 조회
커미션 금액은 월급여에 대한 커미션 금액으로 나타낸다
SELECT  e.employee_id, e.last_name, e.salary,e.salary*COMMISSION_PCT bonus,
        d.department_name
FROM    EMPlOYEES e, departments d 
WHERE   e.department_id = d.department_id(+)
AND    commission_pct IS NOT NULL
ORDER BY 1;

3.각 부서의 부서코드, 부서명, 위치조드, 도시명, 국가코드, 국가명 조회
SELECT   d.department_name, d.department_name,
         l.location_id, l.city,
         c.country_id, c.country_name
       
FROM    departments d , locations l, countries c
WHERE    d.location_id = l. location_id
AND    l.country_id = c. country_id
AND      d.location_id = l.location_id
ORDER BY 1;
 
4.사원의 사번,이름,업무코드,매니저의 사번, 매니저의 이름, 매니저의 업무코드를 조회
사원의 사번 순서대로 정렬--매니저도 사원이기때문에 self join을 사용한다
SELECT e.employee_id 사번, e.last_name 이름, e.job_id 업무코드,
       m.employee_id manager_id, m.first_name manager_name, m.job_id manager_job_id
FROM   employees e, employees m
WHERE   e.manager_id = m.employee_id
ORDER BY 1;

 
5.모든 사원의 사번,이름,부서명,도시,주소 정보 조회
 사번 순서로 정렬
SELECT  e.employee_id, e.last_name, e.salary,
        d.department_name,
        l.location_id, l.street_address
FROM    EMPlOYEES e, departments d, locations l
WHERE   e.department_id = d.department_id
AND     d.location_id = l.location_id(+)
ORDER BY 1;
