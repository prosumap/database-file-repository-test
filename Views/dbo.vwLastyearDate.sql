SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view [dbo].[vwLastyearDate]
as 
select [Date],DATEADD(Day,-365,[date]) as lastyeardate, year from RefTbl_Calendar
GO
