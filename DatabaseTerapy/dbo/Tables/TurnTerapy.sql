CREATE TABLE [dbo].[TurnTerapy] (
    [TurnID]         INT           IDENTITY (1, 1) NOT NULL,
    [TurnName]       NVARCHAR (50) NOT NULL,
    [TurnDataStart]  DATETIME      NOT NULL,
    [TurnEndDate]    DATETIME      NOT NULL,
    [TurnToGenerate] BIT           CONSTRAINT [DF_TurnTerapy_ToGenerate] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_TurnTerapy] PRIMARY KEY CLUSTERED ([TurnID] ASC)
);


GO
-- =============================================
-- Author:		Alessandro
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER [dbo].[trTurnTerapy] 
   ON  dbo.TurnTerapy 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @message nvarchar(max),
			@retval int
    -- Insert statements for trigger here
	if UPDATE(TurnDataStart) or UPDATE(TurnEndDate) 
	begin
		if exists(select 1 from inserted where TurnDataStart>TurnEndDate)
		begin
			set @message ='The start date need to be inferior than end date.'
			exec @retval =sp_Td @message OUTPUT
			RAISERROR (@message , -- Message text.
					16, -- Severity
					1 -- State.
					);
		end
	end

	if UPDATE(TurnToGenerate) 
	begin
		if exists( select sum(tot) from (  select count(*) as tot from inserted where turnToGenerate=1
					Union 
					select count(*) from TurnTerapy where turnToGenerate=1
					) as tbl  
					having sum(tot) >1
				)
		begin
			set @message ='You can have only one item with turnToGenerate set to ON.'
			exec @retval =sp_Td @message OUTPUT
			RAISERROR (@message , -- Message text.
					16, -- Severity
					1 -- State.
					);

		end
	end
END
