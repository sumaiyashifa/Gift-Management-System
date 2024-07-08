                               ---PL/SQL variable declaration and print value---
set serveroutput on
declare 
pro_id product.pro_id%type;
pro_name product.pro_name%type;
begin
select pro_id,pro_name into pro_id,pro_name from product where pro_id=10001;
dbms_output.put_line('Pro_id: '||pro_id|| ' Pro_name: '||pro_name);
end;
/

                                    --Insert and set default value--
set serveroutput on
declare 
user_id users.user_id%type:=54321;
username users.username%type:='username';
password users.password%type:='1234456';
email users.email%type:='bcd@gmail.com';
address users.address%type:='Rajshahi';
phone users.phone%type:='01899355555';
begin
insert into users values(user_id, username, password, email, address, phone);
end;
/
                                               --Row type--
set serveroutput on
declare 
user_row users%rowtype;
begin
select user_id,username,email into user_row.user_id,user_row.username,user_row.email from users where user_id=10000;
end;
/


                                        --Cursor and Row count--
set serveroutput on
declare 
cursor cur is select * from orders;
user_row orders%rowtype;
begin
open cur;
fetch cur into user_row.order_id,user_row.user_id,user_row.pro_id,user_row.quantity;
while cur%found loop
dbms_output.put_line('Order_id: '||user_row.order_id|| ' User_id: '||user_row.user_id || ' pro_id: '||user_row.pro_id);
dbms_output.put_line('Row count: '|| cur%rowcount);
fetch cur into user_row.order_id,user_row.user_id,user_row.pro_id,user_row.quantity;
end loop;
close cur;
end;
/





					--FOR LOOP/WHILE LOOP/ARRAY with extend() function--


set serveroutput on
declare 
  pro transaction.payment_amount%type;
  TYPE NAMEARRAY IS VARRAY(10) OF transaction.payment_amount%type; 
  A_NAME NAMEARRAY := NAMEARRAY();
begin

  for rec in (select transaction_id from transaction) 
  loop
    select payment_amount into pro from transaction where transaction_id = rec.transaction_id;
    A_NAME.EXTEND();
    A_NAME(A_NAME.COUNT) := pro; 
  end loop;


  for i in 1..A_NAME.COUNT 
  loop 
    DBMS_OUTPUT.PUT_LINE(A_NAME(i)); 
  end loop;
end;
/
                               --ARRAY without extend() function--
set serveroutput on
declare 
  counter number;
  pro_name2 product.pro_name%type;
  TYPE NAMEARRAY IS VARRAY(3) OF product.pro_name%type; 
  A_NAME NAMEARRAY:=NAMEARRAY('1', '2', '3'); 
begin
  counter:=1;
  for x in 10001..10003 
  loop
    select pro_name into pro_name2 from product where pro_id=x;
    A_NAME(counter):=pro_name2;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/

                                  ---if-else---
set serveroutput on
declare 
  counter number;
  quantity1 orders.quantity%type;
  TYPE NAMEARRAY IS VARRAY(4) OF orders.quantity%type; 
  A_NAME NAMEARRAY:=NAMEARRAY(1, 2, 3, 4); 
begin
  counter:=1;
  for x in 1001..1004 
  loop
    select quantity into quantity1 from ORDERS where order_id=x;
    if quantity1>1 
        then
        dbms_output.put_line('More than 1 gift');
      else 
        dbms_output.put_line('1 gift');
        end if;
  END LOOP;
end;
/

                                   ---Procedure---
CREATE OR REPLACE PROCEDURE proc2(
  var1 IN NUMBER,
  var2 OUT VARCHAR2,
  var3 IN OUT NUMBER
)
AS
  t_show CHAR(30);
BEGIN
  t_show := 'From procedure: ';
  SELECT username INTO var2 FROM users WHERE user_id=var1;
  var3 := var1 + 1; 
  DBMS_OUTPUT.PUT_LINE(t_show || var2 || ' price is ' || var1 || ' In out parameter: ' || var3);
END;
/
                                        --main
set serveroutput on
declare 
user_id users.user_id%type:=20000;
username users.username%type;
extra number;
begin
proc2(user_id,username,extra);
end;
/

                                ---Function---
set serveroutput on
create or replace function fun(var1 in varchar) return varchar AS
value users.username%type;
begin
  select username into value from users where user_id=var1; 
   return value;
end;
/
                                   --main--
set serveroutput on
declare 
value varchar(20);
begin
value:=fun(30000);
dbms_output.put_line(value);
end;
/
                        --drop procedure and function--
drop procedure proc2;
drop function fun;
                                  ---trigger---
set serveroutput on

CREATE OR REPLACE TRIGGER AfterReviewInsert
AFTER INSERT ON Reviews
FOR EACH ROW
BEGIN
    -- Increment the review count for the corresponding product in the Products table
    UPDATE Products
    SET review_count = review_count + 1
    WHERE pro_id = :NEW.pro_id;
END;
/
