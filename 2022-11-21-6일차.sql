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











