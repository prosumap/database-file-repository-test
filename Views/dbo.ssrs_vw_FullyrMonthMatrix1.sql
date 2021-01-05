SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create view [dbo].[ssrs_vw_FullyrMonthMatrix1]
as
select a.[calendar Month],round(a.[dmd $],0) as [Dmd $],round(b.[Pln Dmd $],0) as [Pln Dmd $],Concat(round(((a.[dmd $]/b.[Pln Dmd $])-1)*100,1),'%')as [Pln %],v.[Bud Dmd $],Concat(round(((a.[dmd $]/v.[Bud Dmd $])-1)*100,1),'%') as [Bud %],ly.[LY Dmd $],
Concat(round(((a.[dmd $]/ly.[LY Dmd $])-1)*100,1),'%') as [YOY],dmdgm$.[Dmd GM $],Concat(round((dmdgm$.[Dmd GM $]/a.[dmd $])*100,1),'%') as [Dmd GM %],Orders.Orders ,round((a.[dmd $]/Orders.Orders),0) as [AOV],
Concat(round((((((a.[dmd $]/Orders.Orders)*lyorders.[Ly Orders])/ly.[LY Dmd $])-1)*100),0),'%') as YOY1,
round((a.[dmd $]/tunits.Units),0) as [AUR],
Concat(round((((((a.[dmd $]/tunits.Units)*lyDmdUnits.[LY Demand Units])/ly.[LY Dmd $])-1)*100),0),'%') as YOY2,
tunits.Units,
round(tshpd.[Shpd $],0) as [Shpd $] , round(tshpdgm.[Shpd GM $],0) as  [Shpd GM $],Concat(round((tshpdgm.[Shpd GM $]/tshpd.[Shpd $])*100,1),'%') as [Shpd GM %] from (
select  c.[calendar Month],sum(d.[demand $]) as [dmd $]
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	
 from  [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month]
 ) as a
 ------
  Join
  (
select  c.[calendar Month],sum([Plan demand $]) as [Pln Dmd $] 
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month])as b on a.[calendar Month]= b.[calendar Month]
  Join
  (
select  c.[calendar Month],sum([Budget demand $]) as [Bud Dmd $] 
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  budgetmatrix1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month]) as v on a.[calendar Month]= v.[calendar Month]
join
(
select  c.[calendar Month],C.[Year],round(sum([Demand $]),0) as [LY Dmd $] 
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on  d.[Fiscal Month]= c.[calendar Month] 
--where --d.[year]=(Year(GetDate())-1)
  where -- c.[calendar Month]=31 
--c.[calendar Month]='Feb' and
--  and
   c.[YEAR]=2019
   group by -- c.[Date],
 c.[calendar Month],c.[Year]

) as  ly on a.[calendar Month]= ly.[calendar Month]
join
(
select  c.[calendar Month],round(sum(d.[demand margin $]),0) as [Dmd GM $]
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month]
) as dmdGM$ on a.[calendar Month]= dmdGM$.[calendar Month]
join
(
select  c.[calendar Month],sum(d.[# orders]) as [Orders]
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month]
)as orders  on a.[calendar Month]= orders.[calendar Month]
join
(
select  c.[calendar Month],sum(d.[Demand Units]) as [Units]
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month]
)as tUnits  on a.[calendar Month]= tUnits.[calendar Month]
join
(
select  c.[calendar Month],sum(d.[shipped $]) as [Shpd $]
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month]
)as tshpd  on a.[calendar Month]= tshpd.[calendar Month]
join
(
select  c.[calendar Month],sum(d.[shipped Margin $]) as [Shpd GM $]
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=2020
 group by -- c.[Date],
 c.[calendar Month]
)as tshpdGM  on a.[calendar Month]= tshpdGM.[calendar Month]
join
(
select  c.[calendar Month],sum([# orders]) as [LY Orders] 
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
--where --d.[year]=(Year(GetDate())-1)
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by -- c.[Date],
 c.[calendar Month]
) as  lyOrders on a.[calendar Month]= lyOrders.[calendar Month]
join
(
select  c.[calendar Month],sum([Demand Units]) as [LY Demand Units] 
--	c.[calendar Month],c.[MonthDesc],	c.[Qtr],c.[Year],c.[Season of Year],c.[YYYYWK]	

 from [dbo].[RefTbl_Calendar] as c
left outer join  mktbl_dailyflash1 as d on c.[Date]=d.[date] and d.[Fiscal Month]= c.[calendar Month]
--where --d.[year]=(Year(GetDate())-1)
  where -- c.[calendar Month]=31 
--  c.MonthDesc='Sep'
--  and
   c.[YEAR]=(Year(GetDate())-1)
   group by -- c.[Date],
 c.[calendar Month]
) as  lyDmdUnits on a.[calendar Month]= lyDmdUnits.[calendar Month]



GO
