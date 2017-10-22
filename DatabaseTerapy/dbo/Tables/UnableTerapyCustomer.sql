CREATE TABLE [dbo].[UnableTerapyCustomer] (
    [TerapyTypeID] INT NOT NULL,
    [CustomerID]   INT NOT NULL,
    CONSTRAINT [PK_UnableTerapyCustomer] PRIMARY KEY CLUSTERED ([TerapyTypeID] ASC, [CustomerID] ASC)
);

