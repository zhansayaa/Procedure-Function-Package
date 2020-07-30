 create or replace FUNCTION employee_work
   (i_first_name IN employees.first_name%TYPE)
   RETURN VARCHAR2
AS
   v_employee_id employees.employee_id%TYPE;
   v_count NUMBER;
   v_status VARCHAR2(100);
BEGIN
   SELECT employee_id
     INTO v_employee_id
     FROM employees
    WHERE first_name = i_first_name;
SELECT 2020-extract(year from hire_date)
     INTO v_count
FROM employees
    WHERE employee_id = v_employee_id;
   IF v_count >= 4 THEN
      v_status := 
         'The employee '||i_first_name||'  '||v_count||
         ' and needs a vaction.';
   ELSE	
      v_status := 
         'The employee '||i_first_name||'  '||v_count||
         ' works.';
   END IF;
   RETURN v_status;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
      -- note that either of the SELECT statements can raise 
      -- this exception
      v_status :=
         'The employee '||i_first_name||'  '||' is not exist';
      RETURN v_status;
WHEN OTHERS THEN
      v_status := 
         'There has been in an error in the function.';
      RETURN v_status;
END;
