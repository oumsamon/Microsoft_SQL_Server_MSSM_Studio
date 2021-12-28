---UDF is similar but different to StorProc---

---Scalar Function(single data value), Table-Value Functions, System Functions(cannot not be modified)
---Syst Func msdn.mircrosoft.com/en-us/library/ms191007.aspx

SELECT * FROM tableName

CREATE FUNCTION YTDSALES()
RETURN MONEY
AS
BEGIN
DECLARE @YTDSALES MONEY
SELECT @YTDSALES = SUM(colName) FROM tableName
RETURN @YTDSALES
END

DECLARE @YTDRESULT  AS MONEY
SELECT @YTDRESULT = dbo.YTDSALES()
PRINT @YTDRESULT

--PARAMETERIZED FUNCTIONS






