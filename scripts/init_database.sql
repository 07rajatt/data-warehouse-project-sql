/*
===================================================
CREATE DATABASE AND SCHEMA
===================================================
Script Purpose:
   This script creates a new database named "DataWarehouse" after checking if it already exists.
   If the database exists, it will be dropped and recreated. Additionally, the script sets up three schemas within the database:
   -- Bronze, Silver, Gold

NOTE:
  If we run the script of if...then, then that script will drop the entire "DataWarehouse" database if it already exists.
  DROP means all the data in the database will be permanently deleted, so make sure to have proper backups before you run that script
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create the DataWarehouse database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Creating schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
