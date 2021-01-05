SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create View  [dbo].[pbi_vw_FullYrQtrMatrix1]
as
select a.Qtr,round(a.[dmd $],0) as [Dmd $],round(b.[Pln Dmd $],0) as [Pln Dmd $],Concat(round(((a.[dmd $]/b.[Pln Dmd $])-1)*100,1),'%')as [Pln %],v.[Bud Dmd $],Concat(round(((a.[dmd $]/v.[Bud Dmd $])-1)*100,1),'%') as [Bud %],ly.[LY Dmd $],
Concat(round(((a.[dmd $]/ly.[LY Dmd $])-1)*100,1),'%') as [YOY],dmdgm$.[Dmd GM $],Concat(round((dmdgm$.[Dmd GM $]/a.[dmd $])*100,1),'%') as [Dmd GM %],Orders.Orders ,round((a.[dmd $]/Orders.Orders),0) as [AOV],
Concat(round((((((a.[dmd $]/Orders.Orders)*lyorders.[Ly Orders])/ly.[LY Dmd $])-1)*100),0),'%') as YOY1,
round((a.[dmd $]/tunits.Units),0) as [AUR],
Concat(round((((((a.[dmd $]/tunits.Units)*lyDmdUnits.[LY Demand Units])/ly.[LY Dmd $])-1)*100),0),'%') as YOY2,
tunits.Units,
round(tshpd.[Shpd $],0) as [Shpd $] , round(tshpdgm.[Shpd GM $],0) as  [Shpd GM $],Concat(round((tshpdgm.[Shpd GM $]/tshpd.[Shpd $])*100,1),'%') as [Shpd GM %] from (
select  C.Qtr,sum(d.[demand $]) as [dmd $]
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	
 from  [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr
 ) as a
 ------
  Join
  (
select  C.Qtr,sum([Plan demand $]) as [Pln Dmd $] 
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr)as b on a.Qtr= b.Qtr
  Join
  (
select  C.Qtr,sum([Budget demand $]) as [Bud Dmd $] 
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr) as v on a.Qtr= v.Qtr
join
(
select  C.Qtr,C.[Year],round(sum([Demand $]),0) as [LY Dmd $] 
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on  d.[Fiscal Qtr]= C.Qtr 
--where --d.[year]=(Year(GetDate())-1)
  where -- C.Qtr=31 
--C.Qtr='Feb' and
--  and
   c.[YEAR]=2019
   group by -- c.[Date],
 C.Qtr,c.[Year]

) as  ly on a.Qtr= ly.Qtr
join
(
select  C.Qtr,round(sum(d.[demand margin $]),0) as [Dmd GM $]
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr
) as dmdGM$ on a.Qtr= dmdGM$.Qtr
join
(
select  C.Qtr,sum(d.[# orders]) as [Orders]
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr
)as orders  on a.Qtr= orders.Qtr
join
(
select  C.Qtr,sum(d.[Demand Units]) as [Units]
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr
)as tUnits  on a.Qtr= tUnits.Qtr
join
(
select  C.Qtr,sum(d.[shipped $]) as [Shpd $]
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr
)as tshpd  on a.Qtr= tshpd.Qtr
join
(
select  C.Qtr,sum(d.[shipped Margin $]) as [Shpd GM $]
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 C.Qtr
)as tshpdGM  on a.Qtr= tshpdGM.Qtr
join
(
select  C.Qtr,sum([# orders]) as [LY Orders] 
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
--where --d.[year]=(Year(GetDate())-1)
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by -- c.[Date],
 C.Qtr
) as  lyOrders on a.Qtr= lyOrders.Qtr
join
(
select  C.Qtr,sum([Demand Units]) as [LY Demand Units] 
--	C.Qtr,c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Qtr]= C.Qtr
--where --d.[year]=(Year(GetDate())-1)
  where -- C.Qtr=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by -- c.[Date],
 C.Qtr
) as  lyDmdUnits on a.Qtr= lyDmdUnits.Qtr
GO
