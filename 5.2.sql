CREATE OR REPLACE PROCEDURE current_day
AS
   day_type CHAR(1);
   userss VARCHAR2(30);
  BEGIN
   SELECT SUBSTR(TO_CHAR(sysdate, 'DAY'), 0, 1)
     INTO day_type
     FROM dual;
   IF day_type = 'S' THEN
      DBMS_OUTPUT.PUT_LINE ('Today is a weekend.');
   ELSE
DBMS_OUTPUT.PUT_LINE ('Today is a weekday.');
   END IF;   
      DBMS_OUTPUT.PUT_LINE('The time is: '||
      TO_CHAR(sysdate, 'HH:MI AM'));
      SELECT user
     INTO userss
     FROM dual;
   DBMS_OUTPUT.PUT_LINE ('The current user is '||userss);
    END current_day;
