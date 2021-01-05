SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create proc  [dbo].[SPResetTbl020ApdMkTbl_TRANS]
as
begin
INSERT INTO mktbl_trans 
            (itemtransbp, 
             ohid, 
             skuid, 
             dseq, 
             type, 
             cdatedt, 
             itemcatid, 
             npricedd, 
             odnpricedd, 
             gpricedd, 
             transqq, 
             custrsncd, 
             [rsn desc], 
             cron) 
SELECT LTrim(RTrim([itemtransbp])) AS Tr, 
       LTrim(RTrim([ohid]))        AS OID, 
       [original mktbl_trans].skuid, 
       LTrim(RTrim([dseq]))        AS DSq, 
       [original mktbl_trans].type, 
       [original mktbl_trans].cdatedt, 
       [original mktbl_trans].itemcatid, 
       [original mktbl_trans].npricedd, 
       [original mktbl_trans].odnpricedd, 
       [original mktbl_trans].gpricedd, 
       [original mktbl_trans].transqq, 
       [original mktbl_trans].custrsncd, 
       [original mktbl_trans].[rsn desc], 
       GetDate()               AS COn 
FROM   [original mktbl_trans]; 

END
GO
