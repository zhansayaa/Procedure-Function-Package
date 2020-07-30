create or replace PROCEDURE find_cusName
(fcustomer_id IN NUMBER,cfirst_name OUT VARCHAR2)
AS BEGIN SELECT name INTO cfirst_name FROM customers
WHERE customer_id= fcustomer_id; 
EXCEPTION WHEN OTHERS THEN DBMS_OUTPUT.PUT_LINE('Not finded: '||fcustomer_id);
END find_cusName;
