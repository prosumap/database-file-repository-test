CREATE TABLE [dbo].[tblSysTransPrefs]
(
[TransNo] [numeric] (18, 0) NOT NULL,
[TransId] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransInterval] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransType] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransDesc] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TransLastRun] [datetime] NULL,
[CrBy] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_tblSysTransPrefs_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSysTransPrefs] ADD CONSTRAINT [PK_tblSysTransPrefs] PRIMARY KEY CLUSTERED  ([TransNo]) ON [PRIMARY]
GO
