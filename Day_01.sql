
--> How many ways we can create a table ?
--  Script
--  GUI
select * from sys.types 

-- sys.types is a system view


-- Table  / Notebook 
-- Pages  / Pages

-- Shortcut
--alt+shift +top arrow +comma
-- DDL command 
create table Tbl_Employee   
(
 EmplName	 Varchar(100)
,EmpDept	 Varchar(100) 
,Salary	     int
,Isactive    bit
)

Alter table Tbl_Employee
add PanDetail char(10)

Alter table Tbl_Employee
drop column Isactive

Drop table Tbl_Employee


create table Tbl_Employee
(
Salary	     int
)

insert into Tbl_Employee (Salary)
values (10)

insert into Tbl_Employee (Salary)
values ('A')

/*
Msg 245, Level 16, State 1, Line 38
Conversion failed when converting the varchar value 'A' to data type int.

Completion time: 2021-05-08T21:32:26.5075564+05:30
*/


select * from Tbl_Employee
-- Rerunnable codes  

/*
-- DDL operations
  1.Create 
  2.Alter -- You want to make changes in the existing objects.
  3.Drop 
  */
-- to see table definition we use alt +f1
  Alter table Tbl_Employee
  Add Empdesination Varchar(100)

  drop table Tbl_Employee
/*
Msg 15009, Level 16, State 1, Procedure sp_help, Line 79 [Batch Start Line 0]
The object 'Tbl_Employee' does not exist in database 'TSQL2020' 
or is invalid for this operation.

Completion time: 2020-10-01T21:14:47.7314592+05:30
*/

	create table Tbl_Employee  -- Alt + f1 to see the structure of the table.
	(
	   Empdesination Varchar(100)
	)

Drop table Tbl_Employee

Select * from [dbo].[FirstTable]

Truncate table  
[dbo].[FirstTable]

  /*
  DML operations
   1. Insert
   2. Update statement
   3. Delete statement
  */

  /*
   DQL -- Data Query language.
   Select statement
  */
-- Shift + Alt + Top arrow and the press ,
create table Tbl_Employee   
(
 EmplName	 Varchar(100)
,EmpDept	 Varchar(100) 
,Salary	     int
,Isactive    bit
)

-- drop table Tbl_Employee
  insert into Tbl_Employee  -- Alt + f1
  (EmplName,EmpDept,Salary,Isactive)
  Values 
  ('Abhi' ,'IT' ,12344 , 1 )
 
   insert into Tbl_Employee  -- Alt + f1
  (EmplName,EmpDept,Salary,Isactive)
   select 'Abhigya' ,'IT' ,34455 , 1
  
  insert into Tbl_Employee  -- Alt + f1
  select 'Abhigya' ,'IT' ,34455 , 1

  insert into Tbl_Employee  -- Alt + f1
  select  'IT','Abhigya' ,34455 , 1

  insert into Tbl_Employee  -- Alt + f1
  select  'IT','Abhi' ,34455 , 0

  select * from Tbl_Employee -- 5 crore 55 lakh 34 thousand 545
   
  select * from Tbl_Employee 
  where EmpDept = 'IT' 

  select * from Tbl_Employee 
  where EmpDept = 'IT'  and Salary = 12344

  update Tbl_Employee 
  set EmplName = 'Abhishek'
  where EmpDept = 'IT'  and Salary = 12344


  delete from Tbl_Employee 
  where EmpDept = 'IT'  and Salary = 12344

  
  select * from Tbl_Employee 
  where EmplName = 'IT'  and isactive = 0

   
  delete from Tbl_Employee 
  where EmplName = 'IT'  and isactive = 0

  insert into Tbl_Employee  -- Alt + f1
  select 'Abhigya' ,'IT' ,34455 , 0

    select * from  Tbl_Employee where isactive = 1
	select * from  Tbl_Employee where isactive = 0
	-- how to soft delete records
  
  -- it is being used to filter the records 

-- Q --> give me employees who are still working in the organization.

  Select * from Tbl_Employee where isactive = 1

   insert into Tbl_Employee 
  (
	 EmplName
	,EmpDept
	,Salary
	,Isactive
  )
  Values 
  ('Ramya','IT',2345,1)

  insert into Tbl_Employee 
  (
	 EmplName
	,EmpDept
	,Salary
	,Isactive
  )
  Values 
  ('Rameshwari','IT',45345,0)

  INSERT INTO [dbo].[Tbl_Employee]
           ([EmplName]
           ,[EmpDept]
           ,[Salary]
           ,[Isactive])
     VALUES
           ('Abhishek'
           ,'IT'
           ,234567
           ,1)
GO


delete 
from Tbl_Employee 
where EmplName = 'Rameshwari'

update s
set EmpDept = 'Tax'
from Tbl_Employee  s
where EmplName = 'Abhi'


select * from Tbl_Employee

Update Tbl_Employee 
Set EmpDept ='Tax'
where EmplName = 'Abhishek'


delete from Tbl_Employee 
where EmplName = 'Abhi'

Select * from Tbl_Employee

/*
  Msg 15009, Level 16, State 1, Procedure sp_help, Line 79 [Batch Start Line 0]
  The object 'Tbl_Employee' does not exist in database 'TSQLWeekends' or is invalid for this operation.
  */
Select * from sys.objects where name ='Tbl_Employee'


-- Creating temporary variables
-- Initialise a variable, give it a data type and an initial value
DECLARE @myvar as int = 2
-- Increase that value by 1
SET @myvar = @myvar + 1
-- Retrieve that value
SELECT @myvar AS myVariable

go

DECLARE @myvar as smallint = 2000
-- Multiply that variable by 10
SET @myvar = @myvar * 10
-- Retrieve that variable
SELECT @myvar AS myVariable

go
DECLARE @myvar as numeric(7,2) -- or decimal(7,2) - 5 bytes needed

-- 12345.67 is valid for the above.
-- 123456.7 is not valid 

SET @myvar = 12345.67

SELECT @myvar AS myVariable

GO

DECLARE @myvar as numeric(18,8) -- or decimal(18,8) - 9 bytes needed

SET @myvar = 1000000000.12345678

SELECT @myvar AS myVariable -- gives 12346

-- 1,000,000,000.12345678 is numeric(18,8)

GO
DECLARE @myvar AS smallmoney = 123456.78917

select @myvar as myVariable -- gives 123456.7892

GO

DECLARE @myvar AS float(24) = 123456.7891 -- precise to 7 digits. -- same as REAL

Select @myvar as myVariable -- this gives 123456.8

DECLARE @myvar as numeric(7,2) = 3

SELECT POWER(@myvar,3) -- 27
SELECT SQUARE(@myvar) -- 9
SELECT POWER(@myvar,0.5) -- square root of 3
SELECT SQRT(@myvar) -- square root of 3

GO

DECLARE @myvar as numeric(7,2) = 12.345

SELECT FLOOR(@myvar) -- this equals 12
SELECT CEILING(@myvar) -- this equals 13
SELECT ROUND(@myvar,-1) as myRound -- this equals 10

GO

SELECT PI() as myPI
SELECT EXP(1) as e

DECLARE @myvar AS NUMERIC(7,2) = -456

SELECT ABS(@myvar) as myABS, SIGN(@myvar) as mySign -- This equals 456 and -1.

GO

SELECT RAND(345) -- A random number, based on the initial seed



-- IMPLICIT

DECLARE @myvar as Decimal(5,2) = 3

SELECT @myvar

-- explicit


SELECT CONVERT(decimal(5,2),3)/2
SELECT CAST(3 as decimal(5,2))/2

SELECT CONVERT(decimal(5,2),1000) -- this does not work

SELECT 3/2 -- EQUALS 1
SELECT 3/2.0 -- EQUALS 1.5

SELECT CONVERT(INT,12.345)+CONVERT(INT,12.7) -- This equals 24.
SELECT CONVERT(INT,12.345+12.7) -- This equals 25.

CREATE TABLE EmployeeInformation
(
Empid         int , 
EmpName       varchar(100) ,
Salary        decimal(12,3) ,
Designation   varchar(100) ,
Language      varchar(100) ,
State         varchar(100) ,
Pincode       varchar(100) ,	
Phoneno       Char(10) ,
DOJ           datetime ,
MandatoryDocuments    varbinary ,
Comments              nvarchar(max),
Isactive              bit,
ExpectedSalaryGrowth  float
)

select * from  sys.types where name ='float'
-- 1 int,
-- 1.5 decimal no 
-- Fixed type (char,Nchar,binary) -- 1 bytes for each character
drop table Test
create table Test
(
Fname Varchar(8000)
)

insert into test (Fname)
select replicate('A',8000)

insert into test (Fname)
select replicate('A',8050)

Select * from Test

create table Temp
(
FirstName  char(10),-- 10 bytes 
LastName  Nchar(10),-- 20 bytes
Isactive bit --
)
-- Fixed Length Datatypes.

select * from  sys.types where name ='char'
select * from  sys.types where name like 'N%'
-- nvarchar
-- nchar

-- Unicode Datatype
-- bit datatype expects either 1 or 0

Select * from Temp
insert into Temp 
(
FirstName,
LastName,
Isactive)
values ('Abhi kumar','Pandey',1)

insert into Temp 
(
FirstName,
LastName,
Isactive)
values ('Abhishek','Pathak',1)
/*
Msg 8152, Level 16, State 14, Line 41
String or binary data would be truncated.
The statement has been terminated.
*/

insert into Temp 
(
FirstName,
LastName,
Isactive)
values ('Abhi',N'மும்பை',1)

insert into Temp 
(
FirstName,
LastName,
Isactive)
values ('Abhishek','மும்பை',1)

Select * from temp where isactive = 1
-- drop table Temp
create table Temp
(
FirstName  char(10),-- 10 bytes 
LastName   Nchar(10),-- 20 bytes
Isactive bit --
)

insert into Temp 
(
FirstName,
LastName,
Isactive)
values ('Ashni',N'மும்பை',0)
go 10

select * from Temp

--> What is Unicode and NonUnicode datatypes .?
--> Unicode is non english languages, 

/*
Msg 8152, Level 16, State 14, Line 1
String or binary data would be truncated.
The statement has been terminated.
*/
-- Sql Server by default check how many rows are getting affected by your query 
-- that no it shows under message window

set nocount on

select * from Temp

set nocount off

/*
let x = 10           -- Declare @x int = 10
let y = 20           -- Declare @y int = 20
z = x + y = 30.      -- Declare @z int 
*/

Declare @x int = 10
Declare @y int = 20
Declare @z int
Set @z = @x + @y
--Select @z
Print @z

-- 2 ways of showing result.
-- 1. Using Select -- will show result in result window.
-- 2. Using Print. -- Will show result in message window.
Select @z as 'Sum of x and Y'
Print @z 
-- Q --> why we need print ??




declare @Abhi int         -- Variable Declaration 
set @Abhi = 10 

set @Abhi = @Abhi + 10   -- assign value to variable

select @Abhi             -- Show you output in Result window.

Print @Abhi              -- Shows you output in message window

-- What is differnce between Char and Nchar ?
-- Char datatpe is a fixed length datatype.

select * from sys.types where name ='char'

declare @var char(1000) = 'Abhi'
go -- batch seperator.
declare @var char(1000) = ' '
-- select len('Abhi') 
Select len(@var) as 'No of characters'-- 4

select DATALENGTH(@var) as 'memory used space' -- 10 byte of space.

go

declare @var char(4) = 'Abhi'
--select len('Abhi') 
-- select len(@var) as 'No of characters'-- 4
select DATALENGTH(@var) as 'memory used space' -- 10 byte of space.

go
-- to store one character Nchar datatype takes 2 bytes.
-- Nchar is also fixed length datatypes.

declare @var Nchar(1000 ) = 'Abcd'
--select len('Abhi') 
-- select len(@var) as 'No of characters'-- 4
select DATALENGTH(@var) as 'memory used space' -- 8 byte of space.

select * from sys.types where name ='Nchar'
go
-- Variable Length Datatype
-- Varchar for one character it takes one bytes.

declare @var varchar(1000) = 'Abhi'
--select len('Abhi') 
select len(@var) as 'No of characters'-- 1
select DATALENGTH(@var) as 'memory used space' -- 1 byte of space.

go

declare @var Nvarchar(1000) = 'Abhi'
--select len('Abhi') 
select len(@var) as 'No of characters'-- 1
select DATALENGTH(@var) as 'memory used space' -- 1 byte of space.


Declare @Variable1 CHAR(20) ='Abhi' -- 1 byte
select LEN(@Variable1),DATALENGTH(@Variable1) 
 
-- it means we are wasting 16 bytes of memory
Declare @Variable2 NCHAR(20)
SET @Variable2='Chakradhar'

Select len(@Variable2) as Variable2, datalength(@Variable2) as VarLength2

-- Dynamic ones(varchar,Nvarchar,Varbinary) 
-- 2 bytes of storage per character and support multiple languages.
go
Declare @Variable VARCHAR(20) ='Abhi' -- 1 byte
Select LEN(@Variable) as 'Len Output'
Select DATALENGTH(@Variable) as 'Data Lenght output'

select * from sys.types where name ='text' -- 16

declare @var text ='1234567890123456'
select @var
go

Declare @Variable1 CHAR(20)
Declare @Variable2 VARCHAR(20)

SET @Variable1='Abhi kumar pandey'
SET @Variable2='Chakradhar'

Select datalength(@Variable1) as VarLength1, datalength(@Variable2) as VarLength2

Select len(@Variable1) as VarLength1, len(@Variable2) as VarLength2

-- select @Variable1, @Variable2

create table Comments 
(
NormalComment         varchar(100),
Multilingulacomments  Nvarchar(500)
)

insert into Comments values 
('Sridevi' , N'மும்பை வந்தது ஶ்ரீதேவியின் உடல்..!')

select * from Comments

/*
Msg 2739, Level 16, State 1, Line 183
The text, ntext, and image data types are invalid for local variables.
  1   -- int 
 '1' -- string
*/

create table Testtable 
(
col varchar(20)
)

insert into Testtable
values (1234567890)

insert into Testtable
values ('12345678901212')

Declare @var text ='ansdjashraeoir'
print @var
/*
Msg 2739, Level 16, State 1, Line 247
The text, ntext, and image data types are invalid for local variables.
*/

Select @@VERSION
/* Two kind of variable .
1. Local variable which start with single @, same local variable can't be declared under a single query window,
    Single batch .
2. Gloable variable which start with double @
*/

Select * from sys.types

create table test 
(
col text
)

insert into test (col) values ('12345678901234561234')


Select (max_length * 8) as 'Bit(s)' from sys.types Where name = 'text'

Select Power(cast(2 as varchar),(128) -1) as 'text max range'  
from sys.types Where name = 'text' -- 1.70141183460469E+38

-- Float and real datatypes must not be used when  we need precise values.
-- Dynamic ones(varchar,Nvarrchar,Varbinary) -- 2 bytes of storage per character and support multiple languages.
-- Fixed size use the storage for the indicated size. for ex , char(30) uses storage for 30 characters, whether you specify 
-- 30 character or less
-- regular character strings are delimited using single quotation marks , whereas unicode character string are
-- delimited with a capital N.
-- select Name, max_length from sys.types

/*Find length of data types*/


-- There are two options 
-- 1) you consider from -ve to + ve value , -127 to 128 or 0 to 255
go
select *  from sys.types Where name = 'tinyint'
-- Max_length value is equal to = 1 , it means 1 byte.

Select (max_length * 8) as 'Bit(s)' from sys.types Where name = 'tinyint'

Select ((Power(cast(2 as varchar),(8) -1)) * 2 )- 1 as 'tinyint max range'  
from sys.types Where name = 'tinyint' -- 255 



Declare @var tinyint = 256
Select @var
/*
Msg 220, Level 16, State 2, Line 300
Arithmetic overflow error for data type tinyint, value = 256.

(1 row affected)
*/

go 

select *  from sys.types Where name = 'smallint'

Select (max_length * 8) as 'Bit(s)' from sys.types Where name = 'smallint'

Select Power(cast(2 as varchar),(16) -1) as 'tinyint max range'  
from sys.types Where name = 'smallint' -- 65535 

declare @var smallint = 32767   
select @var

/*
Msg 220, Level 16, State 2, Line 229
Arithmetic overflow error for data type tinyint, value = 256.

(1 row affected)
*/


-- 2) for integer , - 2147483647 to 2147483648 or 

create table tbl_tinyint
(
id tinyint
)

/*
 The basic difference between Decimal and Numeric :
 They are the exactly same. Same thing different name. 
 */

 select * from sys.types where name = 'decimal'
 select * from sys.types where name = 'numeric'

CREATE TABLE dbo.MyTable  
(  
  MyDecimalColumn  decimal(5,2)  
 ,MyNumericColumn  numeric(10,5)
  
);  



GO  
INSERT INTO dbo.MyTable (MyDecimalColumn, MyNumericColumn ) 
VALUES (123, 12345.12);

Select * from dbo.MyTable 
go 
INSERT INTO dbo.MyTable (MyDecimalColumn, MyNumericColumn ) 
VALUES (123, 123456.12); 

/*
Msg 8115, Level 16, State 8, Line 606
Arithmetic overflow error converting numeric to data type numeric.
The statement has been terminated.

Completion time: 2020-12-16T21:41:57.6901675+05:30

*/

INSERT INTO dbo.MyTable (MyDecimalColumn, MyNumericColumn ) 
VALUES (1234.12, 12345.12); 


 
INSERT INTO dbo.MyTable (MyDecimalColumn, MyNumericColumn ) 
VALUES (123.12, 12345.12);

INSERT INTO dbo.MyTable (MyDecimalColumn, MyNumericColumn ) 
VALUES (123.12, 12345.00009);
  
SELECT MyDecimalColumn, MyNumericColumn  
FROM dbo.MyTable; 

delete from dbo.MyTable;

/*
The basic difference between Decimal/Numeric and Float :
Float is Approximate-number data type, which means that not all values in the data type range can be represented exactly.
Decimal/Numeric is Fixed-Precision data type, which means that all the values in the data type reane can be represented exactly with precision and scale.
Float and Real data types do not store exact values
where as Numeric/Decimal are fixed precision data types

*/

DECLARE @DecimalVariable numeric(10,2) = 213429.95
DECLARE @FloatVariable FLOAT(24)       = 213429.95

SELECT @DecimalVariable AS DecimalVariable ,
@FloatVariable AS FloatVariable


SELECT  9.5 AS Original,
       CAST(9.5 AS INT) AS [int],
       CAST(9.5 AS DECIMAL(6, 4)) AS [decimal];

SELECT  9.5 AS Original 
SELECT  cast(9.5  as int) as Result 
SELECT  cast('Abhi'  as int) as Result 
SELECT  try_cast('Abhi'  as int) as Result 
SELECT  convert ( int , '1') as Result 
SELECT  convert ( int , 'Abhi') as Result 
SELECT  try_convert ( int , 'Abhi') as Result 

-- Explicit Typecasting.



/*
Binary data types of either fixed length or variable length.
binary [ ( n ) ] Fixed-length binary data with a length of n bytes, where n is a value from 1 through 8,000. The storage size is n bytes.
*/


SELECT CAST( 123456 AS BINARY(4));  

DECLARE @BinaryVariable2 BINARY(2);  
  
SET @BinaryVariable2 = 123456;  
SET @BinaryVariable2 = @BinaryVariable2 + 1;  
  
SELECT CAST( @BinaryVariable2 AS INT); 
 
select cast(0x0001E240 as int)

/*
SQL Server BIT data type is an integer data type that can take a value of 0, 1, or NULL
SQL Server converts a string value TRUE to 1 and FALSE to 0. 
It also converts any nonzero value to 1.
*/
-- 1 as True -- Active record
-- 0 as False -- Previous record or inactive records.
-- IsActive ?? or StartDate Column or EndDate Column.
CREATE TABLE sql_server_bit 
(
    bit_col   BIT
);

Delete from sql_server_bit

INSERT INTO sql_server_bit 
(bit_col)
VALUES(1);

INSERT INTO sql_server_bit (bit_col)
VALUES('True');

select * from sql_server_bit

INSERT INTO sql_server_bit (bit_col)
VALUES(0);

INSERT INTO sql_server_bit (bit_col)
VALUES('False');

Select * from sql_server_bit

INSERT INTO sql_server_bit (bit_col)
VALUES('12345');

INSERT INTO sql_server_bit (bit_col)
VALUES('-123');

select * from sql_server_bit
/*
Msg 245, Level 16, State 1, Line 353
Conversion failed when converting the varchar value '-123' to data type bit.
*/

INSERT INTO sql_server_bit (bit_col)
VALUES('False');

INSERT INTO sql_server_bit (bit_col)
VALUES(0.5);

INSERT INTO sql_server_bit (bit_col)
VALUES(getdate());

Select * from sql_server_bit

-- Method 1: Using sp_depends

select * from sys.types 


 sp_depends 'dbo.First'
 GO
-- Method 2 : Using sys.procedures for Stored Procedures

select Name from sys.procedures where OBJECT_DEFINITION(OBJECT_ID) like '%Any Keyword Name%'
-- '% Any Keyword Name %' is the Search keyword you are looking for

-- Method 3 : Using sys.views for Views

select Name from sys.views where OBJECT_DEFINITION(OBJECT_ID) like '%Any Keyword Name%'
-- '% Any Keyword Name %' is the Search keyword you are looking for
-- 123.4545 float, decimal , real, money 

/* 
Float and Real data types do not store exact values
where as Numeric/Decimal are fixed precision data types
*/

DECLARE @DecimalVariable numeric(10,2)= 213429.95
DECLARE @FloatVariable FLOAT(24) = 213429.95
SELECT @DecimalVariable AS DecimalVariable ,
@FloatVariable AS FloatVariable


Select 1 + 1
Select 1 + '1'
Select 1 + 'Abc' -- 1abc
/*
Msg 245, Level 16, State 1, Line 489
Conversion failed when converting the varchar value 'Abc' to data type int.
*/
--      int + String  ??

--  int have higher precedence order.
--  SQL server will convert String into int.

Select 1 + 'a'

/*
Msg 245, Level 16, State 1, Line 432
Conversion failed when converting the varchar value 'a' to data type int.
*/

Select 1 + '289'

 -- operator 
 -- 100 --> int 
 -- '100' --> string 
 
 select 100  +  '1'
 -- it tries to convert string into int (implicit conversion)
 -- Explicit conversion
 select 100  +  'abc'


 /*
 Msg 245, Level 16, State 1, Line 1
Conversion failed when converting the varchar value 'abc' to data type int.
*/
 -- Division 
 -- / provides quotient
 --> % reminder.
 
 select 5/2 -- int 2.5
 
 select 5/2.0 -- result in decimal.
 
 select 5.0/2
 
 select 5%2 

 -- where we will get this precendence order in sql server ?

 -- SQL Server uses the following precedence order for data types:
/*
user-defined data types (highest)
-- sql_variant
-- xml
datetimeoffset
datetime2
datetime
smalldatetime
date
time
float
real
decimal
money
smallmoney
bigint
int
smallint
tinyint
bit
ntext
text
image
timestamp
--uniqueidentifier
nvarchar (including nvarchar(max) )
nchar
varchar (including varchar(max) )
char
--varbinary (including varbinary(max) )
--binary (lowest)
*/
 -- Realtime Scenario for Bit datatype usage.

 Use model
 go
 --drop table Employee
Create table Employee
(
EmployeeID  int,
FirstName   Varchar(50),-- 10 bytes 
LastName    Varchar(50),-- 20 
StartDate   date,
EndDate     date,
Isactive    bit 
)

-- select getdate() -- 2019-06-09 20:25:59.670
insert into Employee 
(
 EmployeeID
,FirstName
,LastName
,StartDate
,EndDate
,Isactive
)
values 
      (10001,'Abhishek','Pathak','2017-06-09',null,'True'),
       (10002,'Ashni','rai','2017-04-09',null,'True')

select * from Employee 

go
-- Null Values 

declare @var int   -- one of the way
set @var = 10
select @var - 1 as Result
go


declare @var varchar(100) 
select @var - 1 as Result

use AdventureWorks2017
go

select top 10 AddressLine1 , AddressLine2  from person.Address

select top 10 AddressLine1 +' ' + AddressLine2 as Result from person.Address

update
Employee 
set Isactive = 'False',
     EndDate = '2019-06-09'
where EmployeeID = 10001

select * from Employee where Isactive = 1

select * from Employee where Isactive = 0

DECLARE @chrASCII as varchar(10) = 'hellothere'

DECLARE @chrUNICODE as nvarchar(10) = N'helloϞ'

select left(@chrASCII,2) as myASCII, right(@chrUNICODE,2) as myUNICODE
select substring(@chrASCII,3,2) as middleletters
select ltrim(rtrim(@chrASCII)) as myTRIM
select replace(@chrASCII,'l','L') as myReplace
select upper(@chrASCII) as myUPPER
select lower(@chrASCII) as myLOWER


declare @myvar as int

select 1+1+1+1+1+@myvar+1+1 as myCol

declare @mystring as nvarchar(20)

select datalength(@mystring) as mystring

declare @mydecimal decimal(5,2)
select try_convert(decimal(5,2),1000)
select try_cast(1000 as decimal(5,2))


declare @firstname as nvarchar(20)
declare @middlename as nvarchar(20)
declare @lastname as nvarchar(20)

set @firstname = 'Sarah'
-- set @middlename = 'Jane'
set @lastname = 'Milligan'

select @firstname + ' ' + @middlename + ' ' + @lastname as FullName
select @firstname + iif(@middlename is null, '', ' ' + @middlename) + ' ' + @lastname as FullName
select @firstname + CASE WHEN @middlename IS NULL THEN '' ELSE ' ' + @middlename END + ' ' + @lastname as FullName
select @firstname + coalesce(' ' + @middlename,'') + ' ' + @lastname as FullName
SELECT CONCAT(@firstname,' ' + @middlename, ' ' , @lastname) as FullName


SELECT 'My number is: ' + convert(varchar(20),4567)
SELECT 'My number is: ' + cast(4567 as varchar(20))

SELECT 'My salary is: $' + convert(varchar(20),2345.6) -- works , but not well
SELECT 'My salary is: ' + format(2345.6,'C','fr-FR')



Select * from sys.types

create table testDateTimeDatatYpes
(
 col1  date   -- 2020-12-16
,col2  time   -- 22:36:38.6033333
,col3  datetime2  -- 2020-12-16 22:36:38.6033333
,col4  datetimeoffset -- 2020-12-16 22:36:38.6033333 +00:00
,col5  datetime   -- 2020-12-16 22:36:38.603
)
insert into testDateTimeDatatYpes values (getdate(),getdate(),getdate(),getdate(),getdate())
select * from testDateTimeDatatYpes

select getdate()   -- 2020-12-16 22:35:49.583


declare @mydate as datetime = '2015-06-24 12:34:56.124'
select @mydate as myDate

declare @mydate2 as datetime2(3) = '20150624 12:34:56.124'
select @mydate2 as MyDate

select DATEFROMPARTS(2015,06,24) as ThisDate
select DATETIME2FROMPARTS(2015,06,24,12,34,56,124,5) as ThatDate
select year(@mydate) as myYear, month(@mydate) as myMonth, day(@mydate) as myDay


SELECT CURRENT_TIMESTAMP as RightNow
select getdate() as RightNow
select SYSDATETIME() AS RightNow
select dateadd(year,1,'2015-01-02 03:04:05') as myYear
select datepart(hour,'2015-01-02 03:04:05') as myHour
select datename(weekday, getdate()) as myAnswer
select datediff(second,'2015-01-02 03:04:05',getdate()) as SecondsElapsed







