SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



 CREATE procedure [dbo].[spSlct_ShippingRevenue] 
as
SET NOCOUNT ON;
IF OBJECT_ID(N'dbo.Slct_ShippingRevenue', N'U') IS NOT NULL
BEGIN
drop table Slct_ShippingRevenue;
end
SELECT sr.[ORDER #], sr.[First Order Date], Sum(sr.[Shipping Revenue $]) AS [Shipping Revenue $] 
INTO dbo.Slct_ShippingRevenue
FROM dbo.vwSlct_ShippingRevenue_01 as sr
GROUP BY sr.[ORDER #], sr.[First Order Date];



GO
