SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE view  [dbo].[ssrs_vw_dailyMatrix1] 
as
select --convert (varchar(10),a.[date]) as FiscalWk,c.[MonthDesc],c.Qtr,
a.[Date],cast (fc.FiscalWk as int) as FiscalWk,fc.MonthDesc,cast (fc.Qtr as int) as QTR,
round(a.[dmd $],0) as [Dmd $],round(b.[Pln Dmd $],0) as [Pln Dmd $],Concat(round(((a.[dmd $]/b.[Pln Dmd $])-1)*100,1),'%')as [Pln %],round(v.[Bud Dmd $],0) as[Bud Dmd $] ,Concat(round(((a.[dmd $]/v.[Bud Dmd $])-1)*100,1),'%') as [Bud %],
round(lydmd.[LY Dmd $],0) as [LY Dmd $],
Concat(round(((a.[dmd $]/lydmd.[LY Dmd $])-1)*100,1),'%') as [YOY],dmdgm$.[Dmd GM $],Concat(round((dmdgm$.[Dmd GM $]/a.[dmd $])*100,1),'%') as [Dmd GM %],Orders.Orders ,round((a.[dmd $]/Orders.Orders),0) as [AOV],
Concat(round((((((a.[dmd $]/Orders.Orders)*lyorders.[Ly Orders])/lyDmdUnitsyoy1yoy2.[Ly Demand $ yoy1 yoy2])-1)*100),0),'%') as YOY1,
round((a.[dmd $]/tunits.Units),0) as [AUR],
Concat(round((((((a.[dmd $]/tunits.Units)*lyDmdUnits.[LY Demand Units])/lyDmdUnitsyoy1yoy2.[Ly Demand $ yoy1 yoy2])-1)*100),0),'%') as YOY2,
tunits.Units,
round(tshpd.[Shpd $],0) as [Shpd $] , round(tshpdgm.[Shpd GM $],0) as  [Shpd GM $],Concat(round((tshpdgm.[Shpd GM $]/tshpd.[Shpd $])*100,1),'%') as [Shpd GM %],
round(tblproj.projectedBill,0) as [Proj. BO Fill $]
,marketingnote.[Marketing Notes - Daily],lymarketingnote.[Ly Marketing Notes]
from (
select  c.[date],sum(d.[demand $]) as [dmd $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	
 from  [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date]
 ) as a
 ------
  Join
  (
select  c.[date],sum([Plan demand $]) as [Pln Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_budgetmatrix1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date])as b on a.[date]= b.[date]
  Join
  (
select  c.[date],sum([Budget demand $]) as [Bud Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_budgetmatrix1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date]) as v on a.[date]= v.[date]
join
(
select  c.[date],round(sum(d.[demand margin $]),0) as [Dmd GM $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date]
) as dmdGM$ on a.[date]= dmdGM$.[date]
join
(
select  c.[date],sum(d.[# orders]) as [Orders]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date]
)as orders  on a.[date]= orders.[date]
join
(
select  c.[date],sum(d.[Demand Units]) as [Units]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date]
)as tUnits  on a.[date]= tUnits.[date]
join
(
select  c.[date],sum(d.[shipped $]) as [Shpd $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date]
)as tshpd  on a.[date]= tshpd.[date]
join
(
select  c.[date],sum(d.[shipped Margin $]) as [Shpd GM $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[Date]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[date]
)as tshpdGM  on a.[date]= tshpdGM.[date]
join
(
select  c.[date],sum(d.[Demand $]) as [Ly Dmd $]
 from [dbo].[vw_tempdate] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[lastyeardate]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020 
 group by -- c.[Date],
 c.[date]
)as lydmd  on a.[date]= lydmd.[date]
join
(
select [date], [Marketing Notes - Daily] from reftbl_calendar 
) as  marketingnote on a.[date]= marketingnote.[Date]
join
(
select  c.[date],d.[Marketing Notes - Daily] as [Ly Marketing Notes]
 from [dbo].[vw_tempdate] as c
left outer join reftbl_calendar as d on c.[lastyeardate]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020 
 group by -- c.[Date],
 c.[date],d.[Marketing Notes - Daily]
) as lymarketingnote on a.[date]= lymarketingnote.[Date]
join
(
select  c.[date],sum(d.[# orders]) as [Ly Orders]
 from [dbo].[vwLastyearDate] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[lastyeardate]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020 
 group by -- c.[Date],
 c.[date]) as  lyOrders on a.[date]= lyOrders.[date]
join
(
select  c.[date],sum(d.[Demand Units]) as [Ly Demand Units]
 from [dbo].[vwLastyearDate] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[lastyeardate]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020 
 group by -- c.[Date],
 c.[date]
) as  lyDmdUnits on a.[Date] =lyDmdUnits.[date]
join
(
select  c.[date],sum(d.[demand $]) as [Ly Demand $ yoy1 yoy2]
 from [dbo].[vwLastyearDate] as c
left outer join  ssrs_mktbl_dailyflash1 as d on c.[lastyeardate]=d.[date] 
  where --c.[date]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020 
 group by -- c.[Date],
 c.[date]
) as  lyDmdUnitsyoy1yoy2  on a.[Date] =lyDmdUnitsyoy1yoy2.[date]
join
(
select c.[date],[dbo].[fnGetProjected](c.[date],getdate())  as projectedBill from RefTbl_Calendar as c
) as tblproj on a.[Date]=tblproj.[date]
join
(select [date],[MonthDesc],FiscalWk,Qtr from [RefTbl_Calendar]  where [Calendar Year]=2020 group by [date],[MonthDesc],FiscalWk,Qtr ) as fc on fc.[date]=a.[date] 

GO
