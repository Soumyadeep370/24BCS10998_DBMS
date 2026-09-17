CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary NUMERIC(10, 2),
    department_name VARCHAR(100)
);
CREATE OR REPLACE PROCEDURE Insert_Employee(
    p_emp_id INT,
    p_emp_name VARCHAR,
    p_salary NUMERIC,
    p_department_name VARCHAR
)
LANGUAGE plpgsql
AS $$
BEGIN
  IF p_emp_id % 2 = 0 THEN
      RAISE EXCEPTION 'Even EMP_ID is not allowed. Only odd EMP_ID is allowed.';
  ELSE
      INSERT INTO Employee (emp_id, emp_name, salary, department_name)
      VALUES (p_emp_id, p_emp_name, p_salary, p_department_name);
      
      RAISE NOTICE 'Success: Employee % (ID: %) inserted into the % department.', 
                   p_emp_name, p_emp_id, p_department_name;
  END IF;
END;
$$;

CALL Insert_Employee(101, 'Soumyadeep', 32000.00, 'Engineering');

CALL Insert_Employee(102, 'Vishal', 68000.00, 'Marketing');

