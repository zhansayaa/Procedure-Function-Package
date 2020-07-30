CREATE OR REPLACE PROCEDURE insert_contact
  (I_customer_id IN contacts.contact_id%TYPE,
   I_email    IN contacts.email%TYPE,
   I_phone   IN contacts.phone%TYPE,
    I_first_name    IN contacts.first_name%TYPE,
   I_last_name   IN contacts.last_name%TYPE   )
AS
v_customer_id  contacts.contact_id%TYPE;
   v_email   contacts.email%TYPE;
   v_phone    contacts.phone%TYPE;
    v_first_name     contacts.first_name%TYPE;
   v_last_name    contacts.last_name%TYPE;
   v_insert contacts.contact_id%TYPE;
BEGIN 
   v_contact_id := i_contact_id;
   v_email  :=  I_email ;
  v_phone:= I_phone;
   v_first_name:=  I_first_name;
    v_last_name:=  I_last_name;
    
SELECT contact_id
     INTO v_insert
     FROM contacts
    WHERE contact_id = v_contact_id;
   DBMS_OUTPUT.PUT_LINE('The contact id '||v_contact_id||
      ' is already in the database and cannot be'||
      ' reinserted.');
EXCEPTION
WHEN NO_DATA_FOUND THEN
     INSERT INTO contact_id 
     VALUES ( v_contact_id,  v_email,v_phone, v_first_name, v_last_name);
   WHEN OTHERS THEN  
      DBMS_OUTPUT.PUT_LINE ('There was an unknown error '||
         'in insert_contact.');
END;
SET SERVEROUTPUT ON
BEGIN
  insert_contact (15, 'zbh,87006884501 ,'Zhansaya', 'Kaidarova');
END;
ROLLBACK;
