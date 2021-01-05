SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE function [dbo].[fnGetDate](
 @paramdate date
)
returns datetime
begin
declare @outputdate as date;
declare @day as nvarchar(50);
set @day= (select(datenaME(dw,DateAdd(day,1,@paramdate))))
if (@day='Sunday')
 begin
  set @outputdate=(select DateAdd(day,2,@paramdate))
 end
else if(@day='saturday') 
  begin
   set @outputdate=(select DateAdd(day,3,@paramdate))
  end
else 
  begin
  set  @outputdate=(select DateAdd(day,1,@paramdate))
  end
  return @outputdate
end
GO
