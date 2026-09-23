--Here we didi't have ORDERS TABLE so I first created Orders table first;

CREATE TABLE ORDERS(
    ORDER_ID NUMBER PRIMARY KEY,
    CUSTOMER_NAME VARCHAR2(100),
    AMOUNT NUMBER(10,2)
);

INSERT INTO ORDERS VALUES (101, 'Vishal', 5000);
INSERT INTO ORDERS VALUES (102, 'Rahul', 15000);
INSERT INTO ORDERS VALUES (103, 'Aman', 25000);
INSERT INTO ORDERS VALUES (104, 'Riya', 8000);

DECLARE
    CURSOR order_cursor IS
        SELECT ORDER_ID, CUSTOMER_NAME, AMOUNT
        FROM ORDERS;

    v_order_id      ORDERS.ORDER_ID%TYPE;
    v_customer_name ORDERS.CUSTOMER_NAME%TYPE;
    v_amount        ORDERS.AMOUNT%TYPE;

BEGIN
    OPEN order_cursor;
    LOOP
        FETCH order_cursor
        INTO v_order_id, v_customer_name, v_amount;
        EXIT WHEN order_cursor%NOTFOUND;
        IF v_amount > 10000 THEN
            DBMS_OUTPUT.PUT_LINE('Order ID: ' || v_order_id ||' - High Value');
        END IF;
    END LOOP;
    CLOSE order_cursor;
END;
/
