
/*
==================================
CREATE Database and Schemas
==================================
Script Purpose :
	This script creates a new database names 'Datawarehouse' after checing if it already exists.
	If the database exist, it is dropped and recreated. Additionally, the script sets up three schemas
	withing the database: 'bronze','silver','gold'.
WARNING:
	Running this script will drop the entire database if it exists.
	All the data in database will be permanently deleted. Proceed with cautioon
	and ensure you have proper backups before running this script.
*/


USE master;
GO

--Drop and recreate the 'Datawarehouse' database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name='Datawarehouse')
BEGIN
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK_IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

--Create the 'Datawarehouse' database 
CREATE DATABASE Datawarehouse;
GO 

USE Datawarehouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO 
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
