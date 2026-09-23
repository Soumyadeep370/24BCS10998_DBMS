CREATE TABLE Employee (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(100),
    SALARY NUMERIC(10,2),
    DEPARTMENT_NAME VARCHAR(100)
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
        RAISE EXCEPTION
        'Even EMP_ID is not allowed. Only odd EMP_ID is allowed.';
    END IF;

    INSERT INTO Employee (
        EMP_ID,
        EMP_NAME,
        SALARY,
        DEPARTMENT_NAME
    )
    VALUES (
        p_emp_id,
        p_emp_name,
        p_salary,
        p_department_name
    );

    RAISE NOTICE 'Employee inserted successfully.';
END;
$$;

CALL Insert_Employee(
    101,
    'Vishal Singh',
    50000,
    'CSE'
);

CALL Insert_Employee(
    102,
    'Vikash',
    55000,
    'ECE'
);

CALL Insert_Employee(
    103,
    'Animesh Singhla',
    40000,
    'CSE'
);

CALL Insert_Employee(
	105,
	'Soumyadeep',
	35000,
	'CSE'
)

  CALL Insert_Employee(
	100,
	'Name where Error',
	35000,
	'CSE'
)

SELECT * FROM Employee;
