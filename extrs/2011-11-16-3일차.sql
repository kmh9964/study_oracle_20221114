--

/*==========================================
1)�÷�, ����, ����
2)���������:=,-,*,/, �񱳿����� :=,>=,>+,<,>
3)AND,OR,NOT:��������
4)LIKE,
==========================================*/

2.3 ������
2.3.1 ��������� : +,-,*,/
--select,where������ �Ҽ� ����
SELECT 2 + 2, 2 - 1, 2 * 3, 4 / 2
FROM dual;--��¥ ���̺�(���� �������� �ʴ� ������ ���̺��� dual�� ����ó��)

[����2-4] 80���� �μ� ����� ���� ���� ���� �޿�(=����)�� ��ȸ�Ͻÿ�
--������� ������ EMPLOYESS ��� ���̺� ����Ǿ� ����.
--����� �ٹ��ϴ� �μ��� ������ DEPARTMENT ��� ���̺� ����Ǿ� ����.
SELECT  employee_id, last_name, salary * 12 "Annual Salary" --��Ī�� ������ �������� ""�����ֱ� 
FROM    employees
WHERE   department_id = 80;


SELECT department_id, department_name, manager_id
FROM departments
WHERE department_id = 80;

[����2-2] ��ü ����� �� ���� ���� ���� �޿��� 120000���� ����� ��ȸ�Ͻÿ�.
SELECT * 
FROM    employees
WHERE   salary*12 = 120000;

2.3.2 ���� ������ :  ||
SELECT employee_id, first_name || last_name full_name--���Ῥ����
FROM  employees;

[����2-6] ����� 101���� ����� ������ ��ȸ�Ͻÿ�
SELECT employee_id ���, first_name ||' '|| last_name ����, department_�μ�
FROM employees
WHERE employee_id = 101;


[����2-8] ����� 101�� ����� ���� �� ���,����,����,�μ��� ��ȸ�Ͻÿ�
SELECT  'hanul' company, employee_id, first_name ||' '||last_name, salary * 12 as "Annual Salary", department_id
FROM    employees
WHERE   employee_id = 101;

[���� 2-9]�޿��� 3000������ ����� ���� ��ȸ�Ѵ�
SELECT   employee_id emp_id, last_name, salary, department_id
FROM    employees
WHERE   salary <= 3000;

SELECT  *
FROM    departments
WHERE   department_id =50;

[����2-10]�μ� �ڵ尡 80�� �ʰ��� ����� ������ ��ȸ�Ͻÿ�
SELECT  employee_id emp_id, first_name||' '||last_name, salary, department_id
FROM    employees
WHERE   department_id > 80;








