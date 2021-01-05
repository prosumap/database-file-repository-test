SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[VWSlct_OrderFlow_01]
AS
SELECT OrdDtl.[ORDER #] AS [Order #], OrdDtl.[Inet Ord ID] AS [Internet Order #], IIf([inet ord id] Is Null,'Call Center','Internet') AS Channel, OrdDtl.[Customer #], OrdDtl.OrdDt AS [Order Date], OrdDtl.ItemDt AS [Item Date], OrdDtl.Cat AS [Event #], OrdDtl.Ordrd AS [Demand Units], [InvCostDD]*[Ordrd] AS [Demand Cost $], [Net Price]*[Ordrd] AS [Demand $], [GPriceDD]*[Ordrd] AS [Advertised Demand $], [TaxDD]*[Ordrd] AS [Tax $], RTRIM(LTRIM([InvID])) AS INV10, OrdDtl.[Dtl Seq] AS Line, Calendar.FiscalWk AS [Ordered Fiscal Wk], Calendar.MonthNo AS [Ordered Fiscal Month #], Calendar.MonthDesc AS [Ordered Fiscal Month], Calendar.Qtr AS [Ordered Fiscal Qtr], Calendar.Year AS [Ordered Fiscal Year], OrdDtl.POS AS [Immediate Cancel Units], [POS]*[INVCostDD] AS [Immediate Cancel Cost $], [POS]*[net price] AS [Immediate Cancel $], [POS]*[gpricedd] AS [Advertised Immediate Cancel $], IIf([pos]>0,[ItemDt],'') AS [Immediate Cancel Date], IIf([pos]>0,[FiscalWk],'') AS [Immediate Cancel Fiscal Wk], IIf([pos]>0,[MonthNo],'') AS [Immediate Cancel Fiscal Month #], IIf([pos]>0,[MonthDesc],'') AS [Immediate Cancel Fiscal Month], IIf([pos]>0,[Qtr],'') AS [Immediate Cancel Fiscal Qtr], IIf([pos]>0,[Year],'') AS [Immediate Cancel Fiscal Year]
FROM dbo.MkTbl_Ord_Dtl as OrdDtl INNER JOIN dbo.RefTbl_Calendar as Calendar ON OrdDtl.ItemDt = Calendar.Date
WHERE (((OrdDtl.ItemDt)>'2019-2-1'));
GO
