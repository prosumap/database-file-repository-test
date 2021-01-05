CREATE TABLE [dbo].[LinkTbl_Source_New]
(
[OpcsSrcBp] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Descrption] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_LinkTbl_Source_New_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LinkTbl_Source_New] ADD CONSTRAINT [LinkTbl_Source_New$PrimaryKey] PRIMARY KEY CLUSTERED  ([OpcsSrcBp]) ON [PRIMARY]
GO
