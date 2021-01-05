CREATE TABLE [dbo].[tblSysEmailTypes]
(
[eId] [numeric] (18, 0) NOT NULL,
[eDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eFrom] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eSendTo] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eCC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eBCC] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eSubject] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eBody] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[eBodyHTML] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblSysEmailTypes] ADD CONSTRAINT [PK_tblSysEmailTypes] PRIMARY KEY CLUSTERED  ([eId]) ON [PRIMARY]
GO
