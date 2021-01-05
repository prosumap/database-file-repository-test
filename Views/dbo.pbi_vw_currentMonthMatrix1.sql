SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE view [dbo].[pbi_vw_currentMonthMatrix1]

as 
   select [todate],isnull(sum([Dmd $]),0)as [Dmd $],isnull(sum([Units]),0)as [Units],isnull(sum([Shpd $]),0)as [Shpd $],isnull(sum([Shpd GM $]),0)as [Shpd GM $]
   ,isnull(sum([Orders]),0)as [Orders],isnull(sum([Dmd GM $]),0) as [Dmd GM $]
   ,isnull(sum([Ly Dmd $]),0)as[Ly Dmd $],isnull(sum([Bud Dmd $]),0)as[Bud Dmd $], isnull(sum([Pln Dmd $]),0)as[Pln Dmd $]
  
 ,(case when isnull(sum([Dmd $]),0)=0 then '-' else (isnull(sum([Dmd $]),0)/isnull(sum([Pln Dmd $]),0)-1) end)*100 as  [Pln %]
 
 ,(case when isnull(sum([Dmd $]),0)=0 then '-' else (isnull(sum([Dmd $]),0)/isnull(sum([Bud Dmd $]),0)-1) end)*100 as [Bud %]

, (case when isnull(sum([Dmd $]),0)=0 then '-' else (isnull(sum([Dmd $]),0)/isnull(sum([Ly Dmd $]),0)-1) end)*100 as [YoY]

,case when isnull(sum([Dmd $]),0)=0 then '-' else (isnull(sum([Dmd $]),0)/isnull(sum([Orders]),0)-1) end as [AOV]
,(isnull(sum([Dmd GM $]),0)/isnull(sum([Dmd $]),0))*100 as [Dmd GM %]
,case when isnull(sum([Dmd $]),0)=0 then '-' else (isnull(sum([Dmd $]),0)/isnull(sum([Units]),0))end as [AUR]

,CASE WHEN isnull(sum([Shpd $]),0) = 0 THEN 0 ELSE (isnull(sum([Shpd GM $]),0)/isnull(sum([Shpd $]),0))*100 END as [Shpd GM %]


  from pivotTableMatrix1
   group by [todate]

GO
