SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE FUNCTION [dbo].[fnGetProjected](
    @paramdate date,
	@paramtempdate date 
)
RETURNS Money
AS 
BEGIN
declare @outputmoney as Money;
declare @comparedate as date =(select dbo.fnGetDate(@paramtempdate));
    if @paramdate<@paramtempdate
	begin
	set @outputmoney=(select null)
	end
	else if (@paramdate =@comparedate)
	begin
	 set @outputmoney= (select sum(backorder_0810_1.[Expected Fill $]) from backorder_0810_1 where backorder_0810_1.[Expected Fill Date]<=@paramdate)
	 end
	else
	begin
	 set @outputmoney=(select sum(backorder_0810_1.[Expected Fill $])from backorder_0810_1 where backorder_0810_1.[Expected Fill Date]=@paramdate)
	 end
	 return @outputmoney
END;
GO
