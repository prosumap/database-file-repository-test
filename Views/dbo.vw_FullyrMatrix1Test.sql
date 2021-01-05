SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE view [dbo].[vw_FullyrMatrix1Test]
as
select(a.FiscalWk)as FiscalWk,a.MonthDesc,a.[Qtr],round(a.[dmd $],0) as [Dmd $],round(b.[Pln Dmd $],0) as [Pln Dmd $],Concat(round(((a.[dmd $]/b.[Pln Dmd $])-1)*100,1),'%')as [Pln %],v.[Bud Dmd $],Concat(round(((a.[dmd $]/v.[Bud Dmd $])-1)*100,1),'%') as [Bud %],ly.[LY Dmd $],
Concat(round(((a.[dmd $]/ly.[LY Dmd $])-1)*100,1),'%') as [YOY],dmdgm$.[Dmd GM $],Concat(round((dmdgm$.[Dmd GM $]/a.[dmd $])*100,1),'%') as [Dmd GM %],Orders.Orders ,round((a.[dmd $]/Orders.Orders),0) as [AOV],
Concat(round((((((a.[dmd $]/Orders.Orders)*lyorders.[Ly Orders])/ly.[LY Dmd $])-1)*100),0),'%') as YOY1,
round((a.[dmd $]/tunits.Units),0) as [AUR],
Concat(round((((((a.[dmd $]/tunits.Units)*lyDmdUnits.[LY Demand Units])/ly.[LY Dmd $])-1)*100),0),'%') as YOY2,
tunits.Units,
round(tshpd.[Shpd $],0) as [Shpd $] , round(tshpdgm.[Shpd GM $],0) as  [Shpd GM $],Concat(round((tshpdgm.[Shpd GM $]/tshpd.[Shpd $])*100,1),'%') as [Shpd GM %] from (
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum(d.[demand $]) as [dmd $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	
 from  [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
 ) as a
 ------
  Join
  (
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum([Plan demand $]) as [Pln Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
 )as b on a.FiscalWk= b.FiscalWk
  Join
  (
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum([Budget demand $]) as [Bud Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
 ) as v on a.FiscalWk= v.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],round(sum([Demand $]),0) as [LY Dmd $] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
--where --d.[year]=(Year(GetDate())-1)
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
) as  ly on a.FiscalWk= ly.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],round(sum(d.[demand margin $]),0) as [Dmd GM $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
) as dmdGM$ on a.FiscalWk= dmdGM$.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum(d.[# orders]) as [Orders]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
)as orders  on a.FiscalWk= orders.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum(d.[Demand Units]) as [Units]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
)as tUnits  on a.FiscalWk= tUnits.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum(d.[shipped $]) as [Shpd $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
)as tshpd  on a.FiscalWk= tshpd.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum(d.[shipped Margin $]) as [Shpd GM $]
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
)as tshpdGM  on a.FiscalWk= tshpdGM.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum([# orders]) as [LY Orders] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
--where --d.[year]=(Year(GetDate())-1)
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
) as  lyOrders on a.FiscalWk= lyOrders.FiscalWk
join
(
select  c.[FiscalWk],c.MonthDesc,c.[Qtr],sum([Demand Units]) as [LY Demand Units] 
--	c.[MonthNo],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Week]=c.FiscalWk
--where --d.[year]=(Year(GetDate())-1)
  where --c.FiscalWk=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by -- c.[Date],
 c.[FiscalWk],c.MonthDesc,c.[Qtr]
) as  lyDmdUnits on a.FiscalWk= lyDmdUnits.FiscalWk




GO
