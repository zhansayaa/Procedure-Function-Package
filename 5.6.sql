create or replace FUNCTION customer_order
   (i_first_name IN customers.name%TYPE)
   RETURN VARCHAR2
AS
   v_customer_id customers.customer_id%TYPE;
   v_count NUMBER;
   v_status VARCHAR2(100);
BEGIN
   SELECT customer_id
     INTO v_customer_id
     FROM customers
    WHERE name = i_first_name;
create or replace FUNCTION customer_order
   (i_first_name IN customers.name%TYPE)
   RETURN VARCHAR2
AS
   v_customer_id customers.customer_id%TYPE;
   v_count NUMBER;
   v_status VARCHAR2(100);
BEGIN
   SELECT customer_id
     INTO v_customer_id
     FROM customers
    WHERE name = i_first_name;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
      -- note that either of the SELECT statements can raise 
      -- this exception
      v_status :=
         'The customer '||i_first_name||'  '||' is not exist';
RETURN v_status;
   WHEN OTHERS THEN
      v_status := 
         'There has been in an error in the function.';
      RETURN v_status;
END;

