CREATE TABLE [dbo].[TodaysDate]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[CrOn] [datetime] NULL CONSTRAINT [DF_TodaysDate_CrOn] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TodaysDate] ADD CONSTRAINT [TodaysDate$PrimaryKey] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[TodaysDate]', 'SCHEMA', N'dbo', 'TABLE', N'TodaysDate', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[TodaysDate].[ID]', 'SCHEMA', N'dbo', 'TABLE', N'TodaysDate', 'COLUMN', N'ID'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'DB_F21BP Access tbls.[TodaysDate].[PrimaryKey]', 'SCHEMA', N'dbo', 'TABLE', N'TodaysDate', 'CONSTRAINT', N'TodaysDate$PrimaryKey'
GO
