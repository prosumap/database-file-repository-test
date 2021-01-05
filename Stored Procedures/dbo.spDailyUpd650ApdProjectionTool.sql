SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 5/21/2020
-- Description:	Part of Weekly Update 9 routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd650ApdProjectionTool] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO MkTbl_ProjectionTool
                         (Category, Division, Department, Class, Style, Color, INV5, INV7, Vendor, [Vendor Style #], [Beyond Basic], [Future Event], [Original Price], [Current Price], [Current Discount %], Cost, [OH Units], [OO Units], [Backorder Units], 
                         [Event BOP U], Event, [Event #], [Current Event #], [Actual Demand Units], [Actual Demand Cost $], [Actual Demand $], [Actual Gross Demand $], [Actual Offered Demand $], [Projection Offered Demand $], 
                         [Projection Ticket Demand $], [Projection Demand Cost $], [Projection Demand Units], [1st Projection Offered Demand $], [1st Projection Demand Cost $], [1st Projection Demand Units], [Plan Offered Demand $], 
                         [Plan Gross Demand $], [Plan Net Demand $], [Plan Demand Cost $], [Plan Demand Units], [Spring Trans 19], [Spring 1 19], [Spring 2 19], [Summer 1 19], [Summer 2 19], [Summer 3 19], [Vacation 19], [Fall 1 19], [Fall 2 19], 
                         [Winter 19], [Holiday 19], [Spring Trans 20], [Spring 1 20], [Spring 2 20], [Summer 1 20], [Summer 2 20], [Summer 3 20], [Fall 1 20], [Fall 2 20], [Winter 20], [Holiday 20], [Spring Trans 21], [Spring 1 21], [Spring 2 21], 
                         [Summer 1 21], [Summer 2 21], [Summer 3 21], [Fall 1 21], [Fall 2 21], [Winter 21], [Holiday 21], [Beyond Basics Spring 19], [Beyond Basics Fall 19], [Beyond Basics Spring 20], [Beyond Basics Summer 20], 
                         [Beyond Basics Fall 20], [Beyond Basics Winter 20], [Web Ex Spring 19], [Web Ex Fall 19], [Web Ex Spring 20], [Web Ex Summer 20], [Web Ex Fall 20], [Web Ex Winter 20])
SELECT        qSlct_ProdSku_16.Category, qSlct_ProdSku_16.Division, qSlct_ProdSku_16.Department, qSlct_ProdSku_16.Class, qSlct_ProdSku_16.Style, qSlct_ProdSku_16.Color, qSlct_ProdSku_16.INV5, qSlct_ProdSku_16.INV7, 
                         qSlct_ProdSku_16.Vendor, qSlct_ProdSku_16.[Vendor Style #], qSlct_ProdSku_16.[Beyond Basic], qSlct_ProdSku_16.[Future Event], qSlct_ProdSku_16.[Original Price], qSlct_ProdSku_16.[Current Price], 
                         qSlct_ProdSku_16.[Current Discount %], qSlct_ProdSku_16.Cost, qSlct_ProdSku_16.[OH Units], qSlct_ProdSku_16.[OO Units], qSlct_ProdSku_16.[Backorder Units], qSlct_ProdSku_16.[Event BOP U], 
                         RTRIM(LTRIM(dbo.fProperCase(qSlct_ProdSku_16.[Event Description], NULL, 3))) AS Expr1, qSlct_ProdSku_16.[Event #], qSlct_ProdSku_16.[Current Event #], qSlct_ProdSku_16.[Actual Demand Units], 
                         qSlct_ProdSku_16.[Actual Demand Cost $], qSlct_ProdSku_16.[Actual Demand $], qSlct_ProdSku_16.[Actual Gross Demand $], qSlct_ProdSku_16.[Actual Offered Demand $], qSlct_ProdSku_16.[Projection Offered Demand $], 
                         qSlct_ProdSku_16.[Projection Ticket Demand $], qSlct_ProdSku_16.[Projection Demand Cost $], qSlct_ProdSku_16.[Projection Demand Units], qSlct_ProdSku_16.[1st Projection Offered Demand $], 
                         qSlct_ProdSku_16.[1st Projection Demand Cost $], qSlct_ProdSku_16.[1st Projection Demand Units], qSlct_ProdSku_16.[Plan Offered Demand $], qSlct_ProdSku_16.[Plan Gross Demand $], 
                         qSlct_ProdSku_16.[Plan Net Demand $], qSlct_ProdSku_16.[Plan Demand Cost $], qSlct_ProdSku_16.[Plan Demand Units], MAX(MkTbl_FutureEventRef.[Spring Trans 19]) AS [Spring Trans 19], 
                         MAX(MkTbl_FutureEventRef.[Spring 1 19]) AS [Spring 1 19], MAX(MkTbl_FutureEventRef.[Spring 2 19]) AS [Spring 2 19], MAX(MkTbl_FutureEventRef.[Summer 1 19]) AS [Summer 1 19], MAX(MkTbl_FutureEventRef.[Summer 2 19]) 
                         AS [Summer 2 19], MAX(MkTbl_FutureEventRef.[Summer 3 19]) AS [Summer 3 19], MAX(MkTbl_FutureEventRef.[Vacation 19]) AS [Vacation 19], MAX(MkTbl_FutureEventRef.[Fall 1 19]) AS [Fall 1 19], 
                         MAX(MkTbl_FutureEventRef.[Fall 2 19]) AS [Fall 2 19], MAX(MkTbl_FutureEventRef.[Winter 19]) AS [Winter 19], MAX(MkTbl_FutureEventRef.[Holiday 19]) AS [Holiday 19], MAX(MkTbl_FutureEventRef.[Spring Trans 20]) 
                         AS [Spring Trans 20], MAX(MkTbl_FutureEventRef.[Spring 1 20]) AS [Spring 1 20], MAX(MkTbl_FutureEventRef.[Spring 2 20]) AS [Spring 2 20], MAX(MkTbl_FutureEventRef.[Summer 1 20]) AS [Summer 1 20], 
                         MAX(MkTbl_FutureEventRef.[Summer 2 20]) AS [Summer 2 20], MAX(MkTbl_FutureEventRef.[Summer 3 20]) AS [Summer 3 20], MAX(MkTbl_FutureEventRef.[Fall 1 20]) AS [Fall 1 20], MAX(MkTbl_FutureEventRef.[Fall 2 20]) 
                         AS [Fall 2 20], MAX(MkTbl_FutureEventRef.[Winter 20]) AS [Winter 20], MAX(MkTbl_FutureEventRef.[Holiday 20]) AS [Holiday 20], MAX(MkTbl_FutureEventRef.[Spring Trans 21]) AS [Spring Trans 21], 
                         MAX(MkTbl_FutureEventRef.[Spring 1 21]) AS [Spring 1 21], MAX(MkTbl_FutureEventRef.[Spring 2 21]) AS [Spring 2 21], MkTbl_FutureEventRef.[Summer 1 21], MkTbl_FutureEventRef.[Summer 2 21], 
                         MkTbl_FutureEventRef.[Summer 3 21], MkTbl_FutureEventRef.[Fall 1 21], MkTbl_FutureEventRef.[Fall 2 21], MkTbl_FutureEventRef.[Winter 21], MkTbl_FutureEventRef.[Holiday 21], 
                         MAX(MkTbl_FutureEventRef.[Beyond Basics Spring 19]) AS [Beyond Basics Spring 19], MAX(MkTbl_FutureEventRef.[Beyond Basics Fall 19]) AS [Beyond Basics Fall 19], MAX(MkTbl_FutureEventRef.[Beyond Basics Spring 20]) 
                         AS [Beyond Basics Spring 20], MAX(MkTbl_FutureEventRef.[Beyond Basics Summer 20]) AS [Beyond Basics Summer 20], MAX(MkTbl_FutureEventRef.[Beyond Basics Fall 20]) AS [Beyond Basics Fall 20], 
                         MAX(MkTbl_FutureEventRef.[Beyond Basics Winter 20]) AS [Beyond Basics Winter 20], MAX(MkTbl_FutureEventRef.[Web Ex Spring 19]) AS [Web Ex Spring 19], MAX(MkTbl_FutureEventRef.[Web Ex Fall 19]) AS [Web Ex Fall 19], 
                         MAX(MkTbl_FutureEventRef.[Web Ex Spring 20]) AS [Web Ex Spring 20], MAX(MkTbl_FutureEventRef.[Web Ex Summer 20]) AS [Web Ex Summer 20], MAX(MkTbl_FutureEventRef.[Web Ex Fall 20]) AS [Web Ex Fall 20], 
                         MAX(MkTbl_FutureEventRef.[Web Ex Winter 20]) AS [Web Ex Winter 20]
FROM            qSlct_ProdSku_16 LEFT OUTER JOIN
                         MkTbl_FutureEventRef ON qSlct_ProdSku_16.INV7 = MkTbl_FutureEventRef.INV7
GROUP BY qSlct_ProdSku_16.Category, qSlct_ProdSku_16.Division, qSlct_ProdSku_16.Department, qSlct_ProdSku_16.Class, qSlct_ProdSku_16.Style, qSlct_ProdSku_16.Color, qSlct_ProdSku_16.INV5, qSlct_ProdSku_16.INV7, 
                         qSlct_ProdSku_16.Vendor, qSlct_ProdSku_16.[Vendor Style #], qSlct_ProdSku_16.[Beyond Basic], qSlct_ProdSku_16.[Future Event], qSlct_ProdSku_16.[Original Price], qSlct_ProdSku_16.[Current Price], 
                         qSlct_ProdSku_16.[Current Discount %], qSlct_ProdSku_16.Cost, qSlct_ProdSku_16.[OH Units], qSlct_ProdSku_16.[OO Units], qSlct_ProdSku_16.[Backorder Units], qSlct_ProdSku_16.[Event BOP U], 
                         RTRIM(LTRIM(dbo.fProperCase(qSlct_ProdSku_16.[Event Description], NULL, 3))), qSlct_ProdSku_16.[Event #], qSlct_ProdSku_16.[Current Event #], qSlct_ProdSku_16.[Actual Demand Units], 
                         qSlct_ProdSku_16.[Actual Demand Cost $], qSlct_ProdSku_16.[Actual Demand $], qSlct_ProdSku_16.[Actual Gross Demand $], qSlct_ProdSku_16.[Actual Offered Demand $], qSlct_ProdSku_16.[Projection Offered Demand $], 
                         qSlct_ProdSku_16.[Projection Ticket Demand $], qSlct_ProdSku_16.[Projection Demand Cost $], qSlct_ProdSku_16.[Projection Demand Units], qSlct_ProdSku_16.[1st Projection Offered Demand $], 
                         qSlct_ProdSku_16.[1st Projection Demand Cost $], qSlct_ProdSku_16.[1st Projection Demand Units], qSlct_ProdSku_16.[Plan Offered Demand $], qSlct_ProdSku_16.[Plan Gross Demand $], 
                         qSlct_ProdSku_16.[Plan Net Demand $], qSlct_ProdSku_16.[Plan Demand Cost $], qSlct_ProdSku_16.[Plan Demand Units], MkTbl_FutureEventRef.[Summer 1 21], MkTbl_FutureEventRef.[Summer 2 21], 
                         MkTbl_FutureEventRef.[Summer 3 21], MkTbl_FutureEventRef.[Fall 1 21], MkTbl_FutureEventRef.[Fall 2 21], MkTbl_FutureEventRef.[Winter 21], MkTbl_FutureEventRef.[Holiday 21]




END
GO
