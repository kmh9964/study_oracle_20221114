desc countries;

/*
�̸�           ��?       ����           
------------ -------- ------------ 
COUNTRY_ID   NOT NULL CHAR(2)      :������ �ڵ�
COUNTRY_NAME          VARCHAR2(40) :������ �̸�
REGION_ID             NUMBER        ������ ���Ե�(=�Ҽӵ�) ��� �ڵ�
*/
DESC countries;
/*
desc DEPARTMENTS;
�̸�              ��?       ����           
--------------- -------- ------------ 
DEPARTMENT_ID   NOT NULL NUMBER(4)    :���̵�
DEPARTMENT_NAME NOT NULL VARCHAR2(30)  :�μ�
MANAGER_ID               NUMBER(6)    :��� �̸�
LOCATION_ID              NUMBER(4)    :���� �ڵ�

desc EMPLOYEES;
�̸�             ��?       ����           
-------------- -------- ------------ 
EMPLOYEE_ID    NOT NULL NUMBER(6)    :����� ���̵�(���)
FIRST_NAME              VARCHAR2(20) :����� �̸�
LAST_NAME      NOT NULL VARCHAR2(25) :����� ��
EMAIL          NOT NULL VARCHAR2(25) :����� �̸���
PHONE_NUMBER            VARCHAR2(20) :����� ��ȭ��ȣ
HIRE_DATE      NOT NULL DATE         :�Ի���
JOB_ID         NOT NULL VARCHAR2(10) :�����ڵ�
SALARY                  NUMBER(8,2)  :�� �޿� 
COMMISSION_PCT          NUMBER(2,2)  :����
MANAGER_ID              NUMBER(6)    :�Ŵ��� ���̵�
DEPARTMENT_ID           NUMBER(4)    :�Ҽ� ���̵�
*/
desc JOB_HISTORY;

SELECT * FROM COUNTRIES;

[���� 2-1] employees ���̺��� ������ ��ȸ�Ͻÿ�.
desc employees;

SELECT * 
FROM employees;

desc EMPLOYEES;

SELECT employee_id, first_name, last_name, salary
FROM employees; 


select
from
where

80�� �μ����� ������� ��ȸ
select * 
from employees
where department_id = 80; --���� ������ : =

��ü �μ��� ��ΰ�?

desc    departments;

select  *
from    departments;






