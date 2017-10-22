CREATE TABLE [dbo].[TerapyType] (
    [TerapyTypeID]         INT           IDENTITY (1, 1) NOT NULL,
    [TerapyTypeName]       NVARCHAR (50) NOT NULL,
    [PersonXSession]       INT           CONSTRAINT [DF_TerapyType_PersonXTurn] DEFAULT ((0)) NOT NULL,
    [TerapyTypeCategoryID] INT           CONSTRAINT [DF_TerapyType_Category] DEFAULT ('') NOT NULL,
    [ReportOrder]          INT           CONSTRAINT [DF_TerapyType_ReportOrder] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_TerapyType] PRIMARY KEY CLUSTERED ([TerapyTypeID] ASC),
    CONSTRAINT [FK_TerapyType_CategoriesTerapy] FOREIGN KEY ([TerapyTypeCategoryID]) REFERENCES [dbo].[CategoriesTerapy] ([CategoryID])
);

