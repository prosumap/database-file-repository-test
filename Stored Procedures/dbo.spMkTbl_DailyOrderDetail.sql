SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE   procedure [dbo].[spMkTbl_DailyOrderDetail]
as
SET NOCOUNT ON;
IF OBJECT_ID(N'dbo.MkTbl_DailyOrderDetail', N'U') IS NOT NULL
Begin
drop table dbo.MkTbl_DailyOrderDetail;
end
SELECT OrderDetail.[order #]                                 AS [Order #], 
       OrderDetail.[inet ord id]                             AS [Internet Order #], 
       IIf([inet ord id] IS NULL, 'Call Center', 'Internet') AS [Channel], 
       OrderDetail.[customer #], 
       OrderDetail.orddt                                     AS [Order Date], 
       OrderDetail.itemdt                                    AS [Item Date], 
       OrderDetail.cat                                       AS [Event #], 
       OrderDetail.ordrd                                     AS [Demand Units], 
       [invcostdd] * [ordrd]                                 AS [Demand Cost $], 
       [net price] * [ordrd]                                 AS [Demand $], 
       [gpricedd] * [ordrd]                                  AS [Advertised Demand $], 
       [taxdd] * [ordrd]                                     AS [Tax $], 
       Ltrim(Rtrim([invid]))                                 AS [INV10], 
       Calendar.fiscalwk                                     AS [Ordered Fiscal Wk], 
       Calendar.monthno                                      AS [Ordered Fiscal Month #], 
       Calendar.monthdesc                                    AS [Ordered Fiscal Month], 
       Calendar.qtr                                          AS [Ordered Fiscal Qtr], 
       Calendar.[Year]                                       AS [Ordered Fiscal Year], 
       OrderDetail.pos                                       AS [Immediate Cancel Units], 
       [pos] * [invcostdd]                                   AS [Immediate Cancel Cost], 
       [pos] * [net price]                                   AS [Immediate Cancel $], 
       [pos] * [gpricedd]                                    AS [Advertised Immediate Cancel $] 
INTO   dbo.mktbl_DailyOrderDetail
FROM   dbo.mktbl_ord_dtl AS OrderDetail 
       INNER JOIN dbo.reftbl_calendar AS Calendar 
               ON OrderDetail.itemdt = Calendar.[Date] 
GO
