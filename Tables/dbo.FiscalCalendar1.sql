CREATE TABLE [dbo].[FiscalCalendar1]
(
[Vlookup Wk#Yr] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Date] [datetime] NULL,
[FiscalWk] [float] NULL,
[MonthNo] [float] NULL,
[MonthDesc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Qtr] [float] NULL,
[Year] [float] NULL,
[Season of Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YYYYWK] [float] NULL,
[Day] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Month#Year] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Marketing Notes - Weekly] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Marketing Notes - Daily] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Column1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
