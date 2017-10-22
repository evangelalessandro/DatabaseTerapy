-- =============================================
-- Author:		Alessandro
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[sp_Td] 
	-- Add the parameters for the stored procedure here
	@p1 nvarchar(max) Output 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if not exists (select 1 from MessagesTranslation where messageEn = @p1)
	begin
		INSERT INTO [dbo].[MessagesTranslation]
           ( [MessageEn])
		VALUES
           ( @p1)
	end
	else
	begin
		select @p1 =[MessageEn]
		from [MessagesTranslation]
		where [MessageEn]=@p1

	end 
	return 
END
