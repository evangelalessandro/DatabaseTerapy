CREATE TABLE [dbo].[Employees] (
    [EmployeeID] INT           IDENTITY (1, 1) NOT NULL,
    [LastName]   NVARCHAR (20) NOT NULL,
    [FirstName]  NVARCHAR (20) NOT NULL,
    [BirthDate]  DATETIME      NULL,
    [Address]    NVARCHAR (60) NULL,
    [City]       NVARCHAR (25) NULL,
    [Region]     NVARCHAR (15) NULL,
    [PostalCode] NVARCHAR (10) NULL,
    [Country]    NVARCHAR (25) NULL,
    [Phone]      NVARCHAR (24) NULL,
    [Photo]      IMAGE         NULL,
    [Notes]      NTEXT         NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);

