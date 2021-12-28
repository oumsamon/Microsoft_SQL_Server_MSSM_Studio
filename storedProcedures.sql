---parameter stored procedures --- use trigger to do a function within a stored procedures.

-- SQL Server template = System Databses => Model => Porgrammability => Stored Procedures

------------------Stored Procedures--------------

CREATE PROCEDURE MyTestProc
AS
SET NOCOUNT ON
SELECT * FROM tableName

---Call the StorProc
EXECUTE MyTestProc

CREATE PROCEDURE MyTestProc
AS
SET NOCOUNT OFF
SELECT * FROM tableName

---Call the StorProc
EXEC MyTestProc
--- Will give you how many roll was affect for NOCOUNT OFF

---Drop StorProc
DROP PROC MyTestProc


---ParamaProc
CREATE PROCEDURE MyFirstParamProc
@Param_Name VARCHAR(50)
AS
SET NOCOUNT ON
SELECT * FROM tableName
WHERE Name = @Param_Name

EXEC MyFirstParamProc @Param_Name = 'Day'
EXEC MyFirstParamProc = 'Day'
---order is important if there many param in StorProc

---setting a default param.
CREATE PROCEDURE MyFirstParamProc
@Param_Name VARCHAR(50) = 'Evening'
AS
SET NOCOUNT ON
SELECT * FROM tableName
WHERE Name = @Param_Name

EXEC MyFirstParamProc 
---will give you evening data.
EXEC MyFirstParamProc 'Day'


---------OutPut Parameters----------
CREATE PROC MyOutputSP
@TopShift VARCHAR(50) OutPut
AS
SET @TopShift = (SELECT TOP (1) ShiftID FROM tableName)

DECLARE @outputresult VARCHAR(50)
EXEC MyOutputSP @outputresult outputresult
SELECT @outputresult

DROP PROC

--------returning Values from StorProc
CREATE PROC myFirstReturningSP
AS
RETURN 12

DECLARE @returnvalue INT
EXEC @returnvalue = myFirstReturningSP
SELECT @returnvalue


