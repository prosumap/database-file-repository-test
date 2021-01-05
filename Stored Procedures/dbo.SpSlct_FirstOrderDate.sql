SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE procedure [dbo].[SpSlct_FirstOrderDate] 
as
IF OBJECT_ID(N'dbo.slct_firstorderdate', N'U') IS NOT NULL
BEGIN
drop table slct_firstorderdate;
END

SELECT do.[order #], 
       Min(do.[item date]) AS [First Item Date] 
INTO   dbo.slct_firstorderdate 
FROM   dbo.mktbl_dailyorder as do 
GROUP  BY do.[order #]; 
GO
