SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE View  [dbo].[vw_TTLOnOrderReceived]
as 
SELECT
t.[CATALOG],
t.[CATALOG DESC], 
t.[PO #],
t.[REQ #],
t.[NDC],
t.[FISCAL WK],
t.[FISCAL MONTH],
t.[FISCAL YEAR],
t.[RECEIPT DATE],
t.[GROUP CODE],
t.[MERCH TYPE],
t.[STYLE DESC],
t.[COLOR DESC],
t.[INV7],
t.[VENDOR #],
t.[VENDOR],
t.[VENDOR STYLE #],
t.[COST EA], 
t.[PO COST], 
sum(t.[OO UNITS]) as [OO UNITS], 
sum(t.[OO COST]) as [OO COST], 
sum(t.[RECEIVED UNITS]) as [RECEIVED UNITS], 
sum(t.[RECEIVED COST]) as [RECEIVED COST], 
t.[APPROVED DATE] ,
------------------
t.[INV10]
FROM BPReporting_Dev.dbo.MkTbl_TTLOnOrderReceived  as t

GROUP BY 
t.[CATALOG],
t.[CATALOG DESC], 
t.[PO #],
t.[REQ #],
t.[NDC],
t.[FISCAL WK],
t.[FISCAL MONTH],
t.[FISCAL YEAR],
t.[RECEIPT DATE],
t.[GROUP CODE],
t.[MERCH TYPE],
t.[STYLE DESC],
t.[COLOR DESC],
t.[INV7],
t.[VENDOR #],
t.[VENDOR],
t.[VENDOR STYLE #],
t.[COST EA],
t.[PO COST],
t.[APPROVED DATE] ,
t.[INV10]

--ORDER BY 
--t.NDC,
--t.]PO #],
--t.]REQ #]
GO
