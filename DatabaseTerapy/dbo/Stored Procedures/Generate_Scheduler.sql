CREATE PROCEDURE [dbo].[Generate_Scheduler] 

AS
BEGIN
--	-- SET NOCOUNT ON added to prevent extra result sets from
--	-- interfering with SELECT statements.
SET NOCOUNT ON;

	
DECLARE 
  @startDate datetime ,   
  @endDate   datetime 

    if not exists(Select * from TurnTerapy where turnToGenerate=1)
	begin
		raiserror('Set the field ''to generate'' in turn form', 16,1)
		return
	end

IF OBJECT_ID('tempdb..#tblTime') IS NOT NULL DROP TABLE #tblTime
	
CREATE TABLE #tblTime(
timeStart datetime 
)

IF OBJECT_ID('tempdb..#tblDate') IS NOT NULL DROP TABLE #tblDate
	
CREATE TABLE #tblDate(
	DateApp datetime 
)

DECLARE 
  @start TIME(0) = '9:30 AM', 
  @end   TIME(0) =  '17:30 PM';

WITH x(n) AS 
(
  SELECT TOP (DATEDIFF(HOUR, @start, @end) + 1) 
  rn = ROW_NUMBER() OVER (ORDER BY [object_id]) 
  FROM sys.all_columns ORDER BY [object_id]
)
insert into #tblTime
SELECT t = DATEADD(HOUR, n-1, @start) FROM x where DATEADD(HOUR, n-1, @start)<>'14:30' ORDER BY t;




select @startDate = TurnDataStart, @endDate=TurnEndDate
from TurnTerapy 
where turnToGenerate=1



IF OBJECT_ID('tempdb..#tblTemp') IS NOT NULL 
	DROP TABLE #tblTemp

CREATE TABLE #tblTemp(
	n int
)

insert into #tblTemp
SELECT TOP (DATEDIFF(DAY, @startDate, @endDate) + 1) 
rn = ROW_NUMBER() OVER (ORDER BY [object_id]) 
FROM sys.all_columns ORDER BY [object_id]


insert into #tblDate
select t from (SELECT t = DATEADD(DAY, n-1, @startDate) 
FROM #tblTemp 
) daysW
where datepart(dw, t)!=6 ---Remove Saturday 

 

INSERT INTO [dbo].[SchedulerTerapy]
           ([SchedulerDateTime]
           ,[SchedEmploy]
           ,[SchedCustomerID]
           ,[SchedTurnID]
           ,[SchedTerapyTypeID]
           ,[SchedNote])
 
select  aa.DateApp + ss.timeStart, 0, 0,TurnTerapy.TurnID,0,'' 
from #tblDate aa
cross apply #tblTime ss
cross apply TurnTerapy 
where TurnToGenerate=1

 

END
