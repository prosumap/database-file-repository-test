CREATE TABLE [dbo].[tblSysUsersTypes]
(
[UsrTypeId] [tinyint] NOT NULL,
[UsrTypeDesc] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrBy] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_tblSysUsersTypes_CrOn] DEFAULT (getdate()),
[ModBy] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModOn] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSysUsersTypes] ADD CONSTRAINT [PK_tblSysUsersTypes] PRIMARY KEY CLUSTERED  ([UsrTypeId]) ON [PRIMARY]
GO
