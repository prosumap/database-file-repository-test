CREATE TABLE [dbo].[mktbl_DailyOrderDetail]
(
[Order #] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Internet Order #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Channel] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[customer #] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Order Date] [datetime] NULL,
[Item Date] [datetime] NULL,
[Event #] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Demand Units] [float] NULL,
[Demand Cost $] [float] NULL,
[Demand $] [float] NULL,
[Advertised Demand $] [float] NULL,
[Tax $] [float] NULL,
[INV10] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ordered Fiscal Wk] [float] NULL,
[Ordered Fiscal Month #] [float] NULL,
[Ordered Fiscal Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Ordered Fiscal Qtr] [float] NULL,
[Ordered Fiscal Year] [float] NULL,
[Immediate Cancel Units] [float] NULL,
[Immediate Cancel Cost] [float] NULL,
[Immediate Cancel $] [float] NULL,
[Advertised Immediate Cancel $] [float] NULL
) ON [PRIMARY]
GO
