CREATE TABLE [dbo].[tblLog]
(
[LogCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[LogBatchNo] [float] NULL,
[LogDT] [datetime] NULL CONSTRAINT [DF_tblLog_LogDT] DEFAULT (getdate()),
[LogWS] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogServer] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogUserName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogUpdType] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogTransType] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogTransDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogTransDuration] [numeric] (18, 0) NULL,
[LogRecId] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogFileDT] [datetime] NULL,
[LogFileSize] [real] NULL,
[LogErr] [bit] NOT NULL CONSTRAINT [DF_tblLog_LogErr] DEFAULT ((0))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblLog] ADD CONSTRAINT [PK_tblLog] PRIMARY KEY CLUSTERED  ([LogCtr] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [LogBatchNo] ON [dbo].[tblLog] ([LogBatchNo]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DT] ON [dbo].[tblLog] ([LogCtr] DESC, [LogDT]) ON [PRIMARY]
GO
