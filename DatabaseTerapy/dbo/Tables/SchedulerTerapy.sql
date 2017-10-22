CREATE TABLE [dbo].[SchedulerTerapy] (
    [SchedulerID]       INT            IDENTITY (1, 1) NOT NULL,
    [SchedulerDateTime] DATETIME       NOT NULL,
    [SchedEmploy]       INT            NOT NULL,
    [SchedCustomerID]   INT            NOT NULL,
    [SchedTurnID]       INT            NOT NULL,
    [SchedTerapyTypeID] INT            NOT NULL,
    [SchedNote]         NVARCHAR (500) NULL,
    CONSTRAINT [PK_SchedulerTerapy] PRIMARY KEY CLUSTERED ([SchedulerID] ASC),
    CONSTRAINT [FK_SchedulerTerapy_Customers] FOREIGN KEY ([SchedCustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_SchedulerTerapy_Employees] FOREIGN KEY ([SchedEmploy]) REFERENCES [dbo].[Employees] ([EmployeeID]),
    CONSTRAINT [FK_SchedulerTerapy_TerapyType] FOREIGN KEY ([SchedTerapyTypeID]) REFERENCES [dbo].[TerapyType] ([TerapyTypeID]),
    CONSTRAINT [FK_SchedulerTerapy_TurnTerapy] FOREIGN KEY ([SchedTurnID]) REFERENCES [dbo].[TurnTerapy] ([TurnID])
);




GO
-- =============================================
-- Author:		Alessandro
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER dbo.tr_SchedulerTerapy 
   ON  dbo.SchedulerTerapy 
   AFTER INSERT, UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	if exists(select * from inserted i
			inner join SchedulerTerapy s
				on i.SchedulerDateTime=s.SchedulerDateTime
					and i.SchedCustomerID!=s.SchedCustomerID
			)
	begin
		return;
	end
END