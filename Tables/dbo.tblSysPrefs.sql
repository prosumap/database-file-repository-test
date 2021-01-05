CREATE TABLE [dbo].[tblSysPrefs]
(
[PrefType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PrefDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrefVal1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrefVal2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrefVal3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PrefNote] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrBy] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_tblSysPrefs_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSysPrefs] ADD CONSTRAINT [PK_tblSysPrefs] PRIMARY KEY CLUSTERED  ([PrefType]) ON [PRIMARY]
GO
