CREATE TABLE [dbo].[Customers] (
    [CustomerID]      INT            IDENTITY (1, 1) NOT NULL,
    [CustomerName]    NVARCHAR (50)  NOT NULL,
    [CustomerSurname] NVARCHAR (50)  NULL,
    [Address]         NVARCHAR (60)  NULL,
    [City]            NVARCHAR (50)  NULL,
    [Region]          NVARCHAR (15)  NULL,
    [PostalCode]      NVARCHAR (10)  NULL,
    [Country]         NVARCHAR (50)  NULL,
    [Phone]           NVARCHAR (50)  NULL,
    [Email]           NVARCHAR (100) NULL,
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);


GO
-- =============================================
-- Author:		Alessandro
-- Create date: 
-- Description:	
-- =============================================
CREATE TRIGGER dbo.tr_Customer 
   ON  dbo.Customers 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
		SET NOCOUNT ON;
	declare @message nvarchar(max),
			@retval int
    -- Insert statements for trigger here
	if exists(select 1 from deleted where CustomerID=0)
	begin
		set @message ='Unable to edit customer 0.'
		exec @retval =sp_Td @message OUTPUT
		RAISERROR (@message , -- Message text.
				16, -- Severity
				1 -- State.
				);
	end
	

END
