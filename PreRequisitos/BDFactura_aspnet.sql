CREATE DATABASE BDFactura_aspnet
GO
USE BDFactura_aspnet
GO

CREATE TABLE [dbo].[Factura] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Fecha]       DATETIME      NOT NULL,
    [Descripcion] VARCHAR (250) NOT NULL,
    [Total]       VARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

SELECT * FROM FACTURA