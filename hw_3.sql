
--INNER JOIN  Fak�ltelerin, b�l�mleri ve hocalar�

SELECT f."faculty_name",d."department_name",i. "instructor_firstname" , i."instructor_lastname" 
FROM educat�on."Faculties" f
INNER JOIN educat�on."Departments" d on d."faculty_id"=f."faculty_id"
INNER JOIN educat�on."Instructors" i on i."department_id"=d."department_id";

--LEFT JOIN B�l�mler ve Hocalar� 

SELECT d."department_name",i. "instructor_firstname" , i."instructor_lastname" 
FROM educat�on."Departments" d 
LEFT JOIN educat�on."Instructors" i on i."department_id"=d."department_id";

--RIGHT JOIN Fak�ltler ve b�l�mler

SELECT f."faculty_name",  d."department_name"
FROM  educat�on."Departments" d
RIGHT JOIN educat�on."Faculties" f on d."faculty_id"=f."faculty_id";

--CROSS JOIN Fak�lteler ve b�l�mlerin b�t�n olas�l�klar�

SELECT f."faculty_name",  d."department_name"
FROM  educat�on."Departments" d
CROSS JOIN educat�on."Faculties" f ;

--MINUS b�l�m� olmayan fak�lteler

SELECT fa."faculty_name"
FROM EDUCATION."Faculties" fa
WHERE fa."faculty_id" in
(select f."faculty_id"
from educat�on."Faculties" f
MINUS
select d."faculty_id"
from educat�on."Departments" d);

--INTERSECT Hem fak�lte hem b�l�m binas� olan binalar

SELECT d."department_building"
FROM EDUCATION."Departments" d
INTERSECT
SELECT f."faculty_building"
FROM EDUCATION."Faculties" f;

--UNION 

select f."faculty_name" as name ,f."faculty_building" as building
from educat�on."Faculties" f
UNION
select d."department_name" as name,d."department_building" as building
from educat�on."Departments" d;

--UNION ALL
select f."faculty_name" as name ,f."faculty_building" as building
from educat�on."Faculties" f
UNION ALL
select d."department_name" as name,d."department_building" as building
from educat�on."Departments" d;

--CONCAT
select concat(i."instructor_firstname",i."instructor_lastname") as Instructor
from educat�on."Instructors" i;

--LENGTH
select f."faculty_building"
from educat�on."Faculties" f
where length(f."faculty_building")=3

--SUBSTR
select substr('BeratBurakTetik',11,15) from dual;

--INSTR
 select instr('BeratBurakTetik','Tetik',1) from dual;

--LPAD
select lpad(f."faculty_id",5,'0') as faculty_id , f."faculty_name"
from educat�on."Faculties" f;

--RPAD
select rpad(f."faculty_building",5,'-') as building, f."faculty_name"
from educat�on."Faculties" f;

--TRIM
select trim(both '-' from '---ORACLE SQL DEVELOPER---')from dual;

--REPLACE
select replace('ORACLE SQL','ORACLE','MS') from dual;

--UPPER
select upper("faculty_name")
from EDUCATION."Faculties";

--LOWER
select lower("instructor_firstname")
from EDUCATION."Instructors";

--POWER
select power(2,16) from dual;

--SQRT
select sqrt(156) from dual;

--SIGN
select sign(-5) from dual;
select sign(0) from dual;
select sign(5) from dual;

--MOD
select mod(158,3) from dual;

--Timezone
select sessiontimezone, current_timestamp from dual;

