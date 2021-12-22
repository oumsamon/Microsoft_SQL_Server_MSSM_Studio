-- MSSM - built in views or template explorer in GUI

-- Create View template

USE <database_name, sysname, AdventureWorks>
GO

If object_id(N' schema_name, sysname, dbo>.<view_name, sysname, Top10Sales>', 'V') IS NOT NULL
    DROP VIEW <schema_name, sysname, dbo>.<view_name, sysname, Top10Sales>
GO

CREATE VIEW <schema_name, sysname, dbo>.<view_name, sysname, Top10Sales> AS <select_statement, , SELECT TOP 10 * FROM Sales.SalesOrderHeader ORDER BY TotalDue DESC>


--- VIEWS (US VIEW)

CREATE VIEW MyCustomUSView
AS
SELECT * FROM dogs
WHERE color LIKE 'red'

SELECT * FROM MyCustomUSView

--- joining 2 tables and creating that VIEW

CREATE VIEW NASalesQuota
SELECT [Name], [Group]. [SalesQuota], [Bonus]
FROM dogs A INNER JOIN cats B
ON 