SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 5/19/2020
-- Description:	Part of Weekly Update 9 routine.
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd630ApdFutureEventRef] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO MkTbl_FutureEventRef
                         (Division, Department, Class, Style, Color, INV5, INV7, [Spring Trans 18], [Spring 1 18], [Spring 2 18], [Summer 1 18], [Summer 2 18], [Summer 3 18], [Fall Trans 18], [Fall 1 18], [Fall 2 18], [Winter 18], [Holiday 18], 
                         [Spring Trans 19], [Spring 1 19], [Spring 2 19], [Summer 1 19], [Summer 2 19], [Summer 3 19], [Vacation 19], [Fall 1 19], [Fall 2 19], [Winter 19], [Holiday 19], [Spring Trans 20], [Spring 1 20], [Spring 2 20], [Summer 1 20], 
                         [Summer 2 20], [Summer 3 20], [Fall 1 20], [Fall 2 20], [Winter 20], [Holiday 20], [Spring Trans 21], [Spring 1 21], [Spring 2 21], [Summer 1 21], [Summer 2 21], [Summer 3 21], [Fall 1 21], [Fall 2 21], [Winter 21], [Holiday 21], 
                         [Beyond Basics Spring 19], [Beyond Basics Fall 19], [Beyond Basics Spring 20], [Beyond Basics Summer 20], [Beyond Basics Fall 20], [Beyond Basics Winter 20], [Web Ex Spring 19], [Web Ex Fall 19], [Web Ex Spring 20], 
                         [Web Ex Summer 20], [Web Ex Fall 20], [Web Ex Winter 20])
SELECT        Division, Department, Class, Style, Color, INV5, INV7, MAX([Spring Trans 18]) AS [Spring Trans 18], MAX([Spring 1 18]) AS [Spring 1 18], MAX([Spring 2 18]) AS [Spring 2 18], MAX([Summer 1 18]) AS [Summer 1 18], 
                         MAX([Summer 2 18]) AS [Summer 2 18], MAX([Summer 3 18]) AS [Summer 3 18], MAX([Fall Trans 18]) AS [Fall Trans 18], MAX([Fall 1 18]) AS [Fall 1 18], MAX([Fall 2 18]) AS [Fall 2 18], MAX([Winter 18]) AS [Winter 18], 
                         MAX([Holiday 18]) AS [Holiday 18], MAX([Spring Trans 19]) AS [Spring Trans 19], MAX([Spring 1 19]) AS [Spring 1 19], MAX([Spring 2 19]) AS [Spring 2 19], MAX([Summer 1 19]) AS [Summer 1 19], MAX([Summer 2 19]) 
                         AS [Summer 2 19], MAX([Summer 3 19]) AS [Summer 3 19], MAX([Vacation 19]) AS [Vacation 19], MAX([Fall 1 19]) AS [Fall 1 19], MAX([Fall 2 19]) AS [Fall 2 19], MAX([Winter 19]) AS [Winter 19], MAX([Holiday 19]) AS [Holiday 19], 
                         MAX([Spring Trans 20]) AS [Spring Trans 20], MAX([Spring 1 20]) AS [Spring 1 20], MAX([Spring 2 20]) AS [Spring 2 20], MAX([Summer 1 20]) AS [Summer 1 20], MAX([Summer 2 20]) AS [Summer 2 20], MAX([Summer 3 20]) 
                         AS [Summer 3 20], MAX([Fall 1 20]) AS [Fall 1 20], MAX([Fall 2 20]) AS [Fall 2 20], MAX([Winter 20]) AS [Winter 20], MAX([Holiday 20]) AS [Holiday 20], MAX([Spring Trans 21]) AS [Spring Trans 21], MAX([Spring 1 21]) 
                         AS [Spring 1 21], MAX([Spring 2 21]) AS [Spring 2 21], MAX([Summer 1 21]) AS [Summer 1 21], MAX([Summer 2 21]) AS [Summer 2 21], MAX([Summer 3 21]) AS [Summer 3 21], MAX([Fall 1 21]) AS [Fall 1 21], MAX([Fall 2 21]) 
                         AS [Fall 2 21], MAX([Winter 21]) AS [Winter 21], MAX([Holiday 21]) AS [Holiday 21], MAX([Beyond Basics Spring 19]) AS [Beyond Basics Spring 19], MAX([Beyond Basics Fall 19]) AS [Beyond Basics Fall 19], 
                         MAX([Beyond Basics Spring 20]) AS [Beyond Basics Spring 20], MAX([Beyond Basics Summer 20]) AS [Beyond Basics Summer 20], MAX([Beyond Basics Fall 20]) AS [Beyond Basics Fall 20], MAX([Beyond Basics Winter 20]) 
                         AS [Beyond Basics Winter 20], MAX([Web Ex Spring 19]) AS [Web Ex Spring 19], MAX([Web Ex Fall 19]) AS [Web Ex Fall 19], MAX([Web Ex Spring 20]) AS [Web Ex Spring 20], MAX([Web Ex Summer 20]) AS [Web Ex Summer 20], 
                         MAX([Web Ex Fall 20]) AS [Web Ex Fall 20], MAX([Web Ex Winter 20]) AS [Web Ex Winter 20]
FROM            vwDailyUpdSlct_FutureEventRef_03
GROUP BY Division, Department, Class, Style, Color, INV5, INV7

END
GO
