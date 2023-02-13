USE [master]
GO

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'MyUmbracoAppOnDockerDB')
BEGIN

    CREATE DATABASE [MyUmbracoAppOnDockerDB] ON 
    ( FILENAME = N'/var/opt/sqlserver/MyUmbracoAppOnDockerData.mdf' ),
    ( FILENAME = N'/var/opt/sqlserver/MyUmbracoAppOnDockerData_log.ldf' )
    FOR ATTACH

END;
GO

USE MyUmbracoAppOnDockerDB;
