CREATE OR REPLACE FUNCTION id_is_exist (i_employee_id IN NUMBER) 
RETURN BOOLEAN AS v_employee_id NUMBER; 
BEGIN SELECT COUNT(*) INTO v_employee_id
FROM employees WHERE employee_id = i_employee_id;
RETURN 1 = v_employee_id; 
EXCEPTION WHEN OTHERS THEN RETURN FALSE; 
END id_is_exist;
