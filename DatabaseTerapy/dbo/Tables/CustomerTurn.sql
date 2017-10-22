CREATE TABLE [dbo].[CustomerTurn] (
    [CustomerTurnID] INT IDENTITY (1, 1) NOT NULL,
    [CustomerID]     INT NOT NULL,
    [TurnID]         INT NOT NULL,
    CONSTRAINT [PK_CustomerTurn] PRIMARY KEY CLUSTERED ([CustomerTurnID] ASC),
    CONSTRAINT [FK_CustomerTurn_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_CustomerTurn_TurnTerapy] FOREIGN KEY ([TurnID]) REFERENCES [dbo].[TurnTerapy] ([TurnID])
);

