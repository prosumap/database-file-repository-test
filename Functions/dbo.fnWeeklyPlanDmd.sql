SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create function [dbo].[fnWeeklyPlanDmd]()
		returns Money
		as
		begin
		 Declare @result Money;
		   set @result=(select sum(b.[Plan Demand $]) from budgetMatrix1 as b  where 
		 b.[date] <=(select max(d.[date]) from mktbl_dailyflash1 as d where d.[Demand Units]>0 ) and
		 b.[fiscal week] = (select  top 1  b.[fiscal week] from budgetMatrix1 as b  where  b.[date] =(select max(d.[date]) from mktbl_dailyflash1 as d where d.[Demand Units]>0))and 
		 b.[fiscal Year] =(select  top 1 b.[fiscal year]  from budgetMatrix1 as b where  b.[date] =(select max(d.[date]) from mktbl_dailyflash1 as d where d.[Demand Units]>0)));
		 return @result
		 end
GO
