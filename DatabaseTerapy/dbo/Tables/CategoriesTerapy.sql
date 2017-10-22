CREATE TABLE [dbo].[CategoriesTerapy] (
    [CategoryID]   INT           IDENTITY (1, 1) NOT NULL,
    [CategoryName] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_CategoriesTerapy] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);


GO
-- =============================================
-- Author:		Alessandro
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER dbo.tr_CategoryTerapy 
   ON  dbo.CategoriesTerapy 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	if update(categoryname) and exists ( select * from inserted inner join CategoriesTerapy
			on inserted.CategoryName=CategoriesTerapy.CategoryName
			and CategoriesTerapy.CategoryID!=inserted.CategoryID)
	begin
		RAISERROR(N'Duplicate Name of Category',16,1);
		return
	end

	if update(categoryname) and exists ( select * from inserted where CategoryID=0)
	begin
		RAISERROR(N'Unable to change base record',16,1);
		return
	end

END
