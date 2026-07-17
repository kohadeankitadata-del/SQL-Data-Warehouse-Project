/*
======================================================================
Create DataBase 'DataWarehouse'
======================================================================
Script Purpose: 
    This scriptcreates a new database named 'DataWarehouse' after checking if it already exits.
If database exists, it is dropped and recreated. Additionally , the script sets up three schemas within the database:
'bronze', 'silver', 'gold'
*/


USE master;
GO

--Drop and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse' )
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' Database
CREATE DATABASE DataWarehouse;
GO


USE DataWarehouse;
GO

--CREATE Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
