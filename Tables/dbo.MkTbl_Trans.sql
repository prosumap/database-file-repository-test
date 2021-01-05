CREATE TABLE [dbo].[MkTbl_Trans]
(
[TransCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[ItemTransBP] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OhId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SkuId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DSeq] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cdatedt] [datetime] NULL,
[ItemCatId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NpriceDD] [float] NULL,
[OdNpriceDD] [float] NULL,
[GpriceDD] [float] NULL,
[TransQQ] [float] NULL,
[CustRsnCd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Rsn Desc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_Tbl_Trans_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Trans] ADD CONSTRAINT [PK_Tbl_Trans] PRIMARY KEY CLUSTERED  ([TransCtr]) ON [PRIMARY]
GO
