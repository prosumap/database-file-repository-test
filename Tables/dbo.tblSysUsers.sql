CREATE TABLE [dbo].[tblSysUsers]
(
[UsrName] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UsrFullName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UsrType] [tinyint] NULL CONSTRAINT [DF_tblSysUsers_UsrType] DEFAULT ((10)),
[UsrActive] [bit] NOT NULL CONSTRAINT [DF_tblSysUsers_UsrActive] DEFAULT ((1)),
[UsrNote] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrBy] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CrOn] [datetime] NULL CONSTRAINT [DF_tblSysUsers_CrOn] DEFAULT (getdate()),
[ModBy] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModOn] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSysUsers] ADD CONSTRAINT [PK_tblSysUsers] PRIMARY KEY CLUSTERED  ([UsrName]) ON [PRIMARY]
GO
