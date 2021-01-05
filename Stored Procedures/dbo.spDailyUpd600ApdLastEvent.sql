SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 5/12/2020
-- Description:	Part of Weekly Update 8 routine. Added this sp after activating the F21 txt import routine
-- =============================================
CREATE PROCEDURE [dbo].[spDailyUpd600ApdLastEvent] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

INSERT INTO MkTbl_LastEvent
                         (Department, Class, Style, INV5, Color, INV7, Size, INV10, [Last Event])
SELECT        Department, Class, Style, INV5, Color, INV7, Size, INV10, MAX(Event) AS [Last Event]
FROM            vwDailyUpdSlct_LastEvent
GROUP BY Department, Class, Style, INV5, Color, INV7, Size, INV10


END
GO
