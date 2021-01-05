SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE view [dbo].[pbi_vw_FullyrMatrix2]
as
select --convert (varchar(10),a.FiscalWk) as FiscalWk,c.[MonthDesc],c.Qtr,
c.[Date],
round(a.[dmd $],0) as [Dmd $],round(b.[Pln Dmd $],0) as [Pln Dmd $],Concat(round(((a.[dmd $]/b.[Pln Dmd $])-1)*100,1),'%')as [Pln %],v.[Bud Dmd $],Concat(round(((a.[dmd $]/v.[Bud Dmd $])-1)*100,1),'%') as [Bud %],ly.[LY Dmd $],
Concat(round(((a.[dmd $]/ly.[LY Dmd $])-1)*100,1),'%') as [YOY],dmdgm$.[Dmd GM $],Concat(round((dmdgm$.[Dmd GM $]/a.[dmd $])*100,1),'%') as [Dmd GM %],Orders.Orders ,round((a.[dmd $]/Orders.Orders),0) as [AOV],
Concat(round((((((a.[dmd $]/Orders.Orders)*lyorders.[Ly Orders])/ly.[LY Dmd $])-1)*100),0),'%') as YOY1,
round((a.[dmd $]/tunits.Units),0) as [AUR],
Concat(round((((((a.[dmd $]/tunits.Units)*lyDmdUnits.[LY Demand Units])/ly.[LY Dmd $])-1)*100),0),'%') as YOY2,
tunits.Units,
round(tshpd.[Shpd $],0) as [Shpd $] , round(tshpdgm.[Shpd GM $],0) as  [Shpd GM $],Concat(round((tshpdgm.[Shpd GM $]/tshpd.[Shpd $])*100,1),'%') as [Shpd GM %] 

from (
select  c.[Date],sum(d.[demand $]) as [dmd $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	
 from  [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
-- c.[FiscalWk]
 ) as a
 ------
  Join
  (
select  c.[Date],sum([Plan demand $]) as [Pln Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
-- c.[FiscalWk]
 )as b on a.[Date]= b.[Date]
  Join
  (
select  c.[Date],sum([Budget demand $]) as [Bud Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
 --c.[FiscalWk]
 ) as v on a.[Date] =v.[date]
join
(
select  c.[Date],round(sum([Demand $]),0) as [LY Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
--where --d.[year]=(Year(GetDate())-1)
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by  c.[Date]
-- c.[FiscalWk]
) as  ly on a.[Date]= ly.[Date]
join
(
select  c.[date],round(sum(d.[demand margin $]),0) as [Dmd GM $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
 --c.[FiscalWk]
) as dmdGM$ on a.[Date]= dmdGM$.[Date]
join
(
select  c.[date],sum(d.[# orders]) as [Orders]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
 --c.[FiscalWk]
)as orders  on a.[Date]= orders.[Date]
join
(
select  c.[Date],sum(d.[Demand Units]) as [Units]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
 --c.[FiscalWk]
)as tUnits  on a.[Date]= tUnits.[Date]
join
(
select  c.[Date],sum(d.[shipped $]) as [Shpd $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
-- c.[FiscalWk]
)as tshpd  on a.[Date]= tshpd.[Date]
join
(
select  c.[Date],sum(d.[shipped Margin $]) as [Shpd GM $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by  c.[Date]
-- c.[FiscalWk]
)as tshpdGM  on a.[Date]= tshpdGM.[Date]
join
(
select  c.[Date],sum([# orders]) as [LY Orders] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
--where --d.[year]=(Year(GetDate())-1)
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by  c.[Date]
-- c.[FiscalWk]
) as  lyOrders on a.[Date]= lyOrders.[Date]
join
(
select  c.[Date],sum([Demand Units]) as [LY Demand Units] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  pbi_mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
--where --d.[year]=(Year(GetDate())-1)
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by  c.[Date]
-- c.[FiscalWk]
) as  lyDmdUnits on a.[Date]= lyDmdUnits.[Date]
join
(select [Date], [MonthDesc],FiscalWk,Qtr from [RefTbl_Calendar]  where [Calendar Year]=2020 group by [date],[MonthDesc],FiscalWk,Qtr ) as c on c.[Date]=a.[Date] 
GO
