
--INNER JOIN  Fakültelerin, bölümleri ve hocalarý

SELECT f."faculty_name",d."department_name",i. "instructor_firstname" , i."instructor_lastname" 
FROM educatýon."Faculties" f
INNER JOIN educatýon."Departments" d on d."faculty_id"=f."faculty_id"
INNER JOIN educatýon."Instructors" i on i."department_id"=d."department_id";

--LEFT JOIN Bölümler ve Hocalarý 

SELECT d."department_name",i. "instructor_firstname" , i."instructor_lastname" 
FROM educatýon."Departments" d 
LEFT JOIN educatýon."Instructors" i on i."department_id"=d."department_id";

--RIGHT JOIN Fakültler ve bölümler

SELECT f."faculty_name",  d."department_name"
FROM  educatýon."Departments" d
RIGHT JOIN educatýon."Faculties" f on d."faculty_id"=f."faculty_id";

--CROSS JOIN Fakülteler ve bölümlerin bütün olasýlýklarý

SELECT f."faculty_name",  d."department_name"
FROM  educatýon."Departments" d
CROSS JOIN educatýon."Faculties" f ;

--MINUS bölümü olmayan fakülteler

SELECT fa."faculty_name"
FROM EDUCATION."Faculties" fa
WHERE fa."faculty_id" in
(select f."faculty_id"
from educatýon."Faculties" f
MINUS
select d."faculty_id"
from educatýon."Departments" d);

--INTERSECT Hem fakülte hem bölüm binasý olan binalar

SELECT d."department_building"
FROM EDUCATION."Departments" d
INTERSECT
SELECT f."faculty_building"
FROM EDUCATION."Faculties" f;

--UNION 

select f."faculty_name" as name ,f."faculty_building" as building
from educatýon."Faculties" f
UNION
select d."department_name" as name,d."department_building" as building
from educatýon."Departments" d;

--UNION ALL
select f."faculty_name" as name ,f."faculty_building" as building
from educatýon."Faculties" f
UNION ALL
select d."department_name" as name,d."department_building" as building
from educatýon."Departments" d;

--CONCAT
select concat(i."instructor_firstname",i."instructor_lastname") as Instructor
from educatýon."Instructors" i;

--LENGTH
select f."faculty_building"
from educatýon."Faculties" f
where length(f."faculty_building")=3

--SUBSTR
select substr('BeratBurakTetik',11,15) from dual;

--INSTR
 select instr('BeratBurakTetik','Tetik',1) from dual;

--LPAD
select lpad(f."faculty_id",5,'0') as faculty_id , f."faculty_name"
from educatýon."Faculties" f;

--RPAD
select rpad(f."faculty_building",5,'-') as building, f."faculty_name"
from educatýon."Faculties" f;

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

