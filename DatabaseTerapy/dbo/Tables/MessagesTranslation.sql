CREATE TABLE [dbo].[MessagesTranslation] (
    [MessageId] INT            IDENTITY (1, 1) NOT NULL,
    [MessageEn] NVARCHAR (500) NOT NULL,
    CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED ([MessageId] ASC)
);

