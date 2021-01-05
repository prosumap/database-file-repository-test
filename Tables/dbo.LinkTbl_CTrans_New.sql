CREATE TABLE [dbo].[LinkTbl_CTrans_New]
(
[ItemTransBPCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[ItemTransBP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OhId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SkuId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Dseq] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CdateDt] [datetime] NULL,
[ItemCatId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NpriceDD] [float] NULL,
[OdNpriceDD] [float] NULL,
[GPriceDD] [float] NULL,
[TransQQ] [float] NULL,
[CustRsnCd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RsnDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_CTrans_New_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_CTrans_New] ADD CONSTRAINT [LinkTbl_CTrans_New$PrimaryKey] PRIMARY KEY CLUSTERED  ([ItemTransBPCtr]) ON [PRIMARY]
GO
