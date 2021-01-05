SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[SpSlct_FirstShipDate]
as 
SET NOCOUNT ON;
IF OBJECT_ID(N'dbo.slct_firstshipdate', N'U') IS NOT NULL
Begin
drop table dbo.slct_firstshipdate;
end

SELECT ds.[Order#], 
       Min(ds.[Ship_Date])        AS [First Ship Date], 
       sr.[shipping revenue $] AS [Shipping Revenue $] 
INTO   dbo.slct_firstshipdate 
FROM   dbo.slct_shippingrevenue as sr
       RIGHT JOIN dbo.MkTbl_DailyShip as ds
               ON sr.[order #] = ds.[Order#] 
GROUP  BY ds.[order#], 
          sr.[shipping revenue $]; 
GO
