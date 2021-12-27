--- set of SQL statement when its meet, trigger will auto run the statement function.

--- Insert|Update|Delete = Triggers

SELECT * FROM tableName

CREATE TRIGGER demoTrigger
ON tableName
AFTER Insert
AS
BEGIN
PRINT 'INSERT IS NOT ALLOWED. YOU NEED APPROVAL'
ROLLBACK TRANSACTION
END
GO

---TEST THE TRIGGER
INSERT INTO tableName
(
    [NAME],
    [STARTTIME],
    [ENDTIME]
)
VALUES
(
    'callWhateverNAme',

    getdate()
)

SELECT * FROM tableName

-----------------------------
-------------------------DATABASE LEVEL TRIGGER--------------

CREATE TRIGGER Demo_DBTrigger
ON DATABASE
AFTER CREATE_TABLE
AS
BEGIN
PRINT 'CREATION OF NEW TABLES NOT ALLOWED'
ROLLBACK TRANSACTION
END
GO

CREATE TABLE MyDemoTable
--will not trigger

