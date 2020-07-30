create or replace PACKAGE fisrt_pack AS
FUNCTION employee_exist(i_employee_id IN employees.employee_id%TYPE)
return boolean;
FUNCTION employee_work(i_first_name IN employees.first_name%TYPE)
return varchar2;
FUNCTION customer_order(i_first_name IN customers.name%TYPE);
PROCEDURE find_cusname(fcustomer_id IN NUMBER,cfirst_name OUT VARCHAR2);
procedure current_day;
procedure insert_contact;
END first_pack;
