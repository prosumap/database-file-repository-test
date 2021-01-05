SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE    procedure  [dbo].[spinsert_mktbl_Inv10]
AS
if(select count(1) from [dbo].[Mktbl_INV10] where CONVERT(varchar,[Current Date],101)=CONVERT(varchar,GETDATE(),101))=0
begin
Insert into [dbo].[Mktbl_INV10]
SELECT
 ci.[Category]
,ci.[Division]
,ci.[Department]
,ci.[Class]
,ci.[Style]
,ci.[Color]
,ci.[Size]
,ci.[INV5]
,ci.[INV7]
,ci.[INV10]
,ci.[Original Price]
,ci.[Current Price]
,ci.[Current Cost]
,IIF(substring(ci.[Current Event #],1,1) = '2','Clearance','Full Price') as [Status]
,ci.[Current Event #]
,ci.[Current Event]
,ci.[Current OH Units]
,ci.[current Date]
,rc.[Year] AS [Fiscal Year]
,rc.[Qtr] AS [Fiscal Qtr]
,rc.[MonthDesc] AS [Fiscal Month]
,rc.[MonthNo] AS [Fiscal Month #]
,rc.[FiscalWk] AS [Fiscal Week]

FROM [dbo].[MkTbl_CurrentINV10] as ci
LEFT JOIN [dbo].[RefTbl_Calendar] as rc
ON CONVERT(nvarchar,ci.[Current Date],101)= CONVERT(nvarchar,rc.[Date],101)
WHERE ci.[Current OH Units] >0 or (ci.[Current Event #] is not null and ci.[Current OO Units]>0)


end
GO
