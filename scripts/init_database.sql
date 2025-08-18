use master;
Go
-- Drop and recreate the datawarehouse database 
if exists(select 1 from sys.databases where name='Datawarehouse')
BEGIN 
	ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO
-- CREATE DATABASE 
create database Datawarehouse;

GO

use datawarehouse;
GO

-- CREATE SCHEMA
create schema bronze;
GO
create schema silver;
GO
create schema gold;
