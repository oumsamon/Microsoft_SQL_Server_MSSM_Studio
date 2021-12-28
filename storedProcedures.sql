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
