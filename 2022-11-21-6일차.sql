1.NUll
--�� �μ��� ��ġ ������ ���� location���̺��� ����Ѵ�
desc locations;
LOCATION_ID    NOT NULL NUMBER(4)    :��ġ�ڵ�
STREET_ADDRESS          VARCHAR2(40) :�ּ�
POSTAL_CODE             VARCHAR2(12) :�����ȣ
CITY           NOT NULL VARCHAR2(30) :�����̸�
STATE_PROVINCE          VARCHAR2(25) :��
COUNTRY_ID              CHAR(2)      :�����ڵ�

--lacation���̺� ��������ȸ
select *
from locations; --comission_pct, postal_code, state_province�� null�� ����
 [���� 2-36]
SELECT location_id loc_id, street_address addr, state_province state
from locations
WHERE state_province IS NULL;

-- ��� ���̺�employees ��ȸ
--�󿩱� ���� �ʴ� ��� ��ȸ
select *
from employees
WHERE commission_pct IS NULL;
-- �Ŵ����� ���� ��� ��ȸ
select *
from employees
WHERE MANAGER_ID IS NULL;

SELECT location_id, street_address, city, state_province 
from locations
WHERE state_province IS NOT NULL;

--2.4 �������� ����
select *
FROM employees
WHERE department_id IS NOT NULL
order by employee_id DESC;

[���� 2-40] 80�� �μ��� ��������� �̸��� �������� ������������ ����
SELECT employee_id,last_name, department_id
FROM employees
WHERE department_id=80
ORDER BY last_name DESC;

[����2-42]60���Ǻμ��� ��������� ���� �� �޿��� ������������ ����
SELECT employee_id,last_name, department_id, salary*12 annual_salary
FROM employees
WHERE department_id=60
ORDER BY annual_salary;


SELECT employee_id,last_name,department_id, salary*12 annual_salary
FROM employees
WHERE department_id=60
ORDER BY 5;

[����2-43]��� ���̺��� �μ��� ��������,���޿��� ������������ �����Ͽ� ��� ������ ��ȸ
SELECT employee_id,last_name,department_id,salary
FROM employees
ORDER BY department_id,salary DESC ;

--3�� �⺻�Լ�
[���� 3-1]ABS
SELECT ROUND(123.45678, -2) R1,
       ROUND(12345.678, -2) R2
FROM dual;

[����3-5]
SELECT TRUNC(123.456789)T1,
       TRUNC(123.456789)T1,
       TRUNC(123.456789)T1,

[�������� 3-1]
��� ���̺��� 100�� �μ��� 110�� �μ��� ����� ���� ���,�̸�, �޿��� 15%�λ�� �޿� ��ȸ
(15% �λ�� �޿��� ������ ǥ��, �÷����� Increased Salary�� ǥ��)
SELECT employee_id ,first_name, salary, ROUND(salary*1.15) "Increased Salary"
FROM employees
WHERE department_id IN (100,110)
ORDER BY employee_id; 

[����3-14]
--�ڽ��� �̸��� �ּҸ� �̿��ؼ� @�� ��ġ�� INSTR()���� ã��,SUBSTR()�� ��ȸ
SELECT  'raki82@hanmail.net' Email_addr,
        SUBSTR('raki82@hanmail.net',1,INSTR('raki82@hanmail.net','@')-1)Email_id
        --SUBSTR('raki82@hanmail.net',1,INSTR('raki82@hanmail.net','@')+1)Email_domain
FROM dual;

��¥ �Լ�
SELECT sysdate
FROM dual;


SELECT *
FROM v$nls_parameters;

ALTER SESSION SET nls_date_format = 'RR/MM/DD HH:MI:SS';

SELECT ADD_MONTHS(SYSDATE,1) MONTH1
FROM dual;

SELECT TRUNC( MONTHS_BETWEEN(SYSDATE,'2022-11-14')) PASSED,
       TRUNC(MONTHS_BETWEEN('2023-05-16',SYSDATE)) REMAINED
FROM dual;


SELECT NEXT_DAY(SYSDATE,'������') NEXT1, 
       NEXT_DAY(SYSDATE,'�ݿ���') NEXT2,
       NEXT_DAY(SYSDATE,'��') NEXT3, 
       NEXT_DAY(SYSDATE,4) NEXT4 
FROM dual;

SELECT *
FROM v$nls_parameters;

SELECT ROUND(TO_DATE('2013-06-30'),'yyyy') R1,
       ROUND(TO_DATE('2013-07-01'),'YEAR') R2,
       ROUND(TO_DATE('2013-12-15'),'MONTH') R3,
       ROUND(TO_DATE('2013-12-16'),'MM') R4,
       ROUND(TO_DATE('2013-05-27 11:59:59','YYYY-MM-DD HH24:MI:SS'),'DD') R5,
       ROUND(TO_DATE('2013-05-27 12:00:00','YYYY-MM-DD HH24:MI:SS'),'DD') R6,
       ROUND(TO_DATE('2013-05-29'),'DAY') R7,
       ROUND(TO_DATE('2013-05-30'),'DAY') R8
FROM dual;

SELECT sysdate
FROM dual;
ALTER SESSION SET nls_date_format = 'RR/MM/DD HH:MI:SS';

SELECT  TO_CHAR(sysdate,'YYYY-MONTH-DD')DATE_FMT1,
        TO_CHAR(sysdate,'RR/MM/DD HH:MI:SS')DATE_FMT2,
        TO_CHAR(sysdate,'YY-MM-DD DAY')DATE_FMT3
FROM dual;




















