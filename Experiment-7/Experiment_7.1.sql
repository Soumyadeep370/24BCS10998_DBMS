--TABLE STAFF was bydefault created in ORACLE Free SQL so just wrote the command and skipped full table creation.
DECLARE
    CURSOR exp7 IS
        SELECT NAME, SALARY
        FROM( SELECT NAME, SALARY FROM STAFF ORDER BY SALARY DESC
        )
        WHERE ROWNUM <= 5;
    v_name   STAFF.NAME%TYPE;
    v_salary STAFF.SALARY%TYPE;
BEGIN
    OPEN exp7;
    LOOP
        FETCH exp7 INTO v_name, v_salary;
        EXIT WHEN exp7%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Name: ' || v_name ||', Salary: ' || v_salary);
    END LOOP;
    CLOSE exp7;
END;
/
