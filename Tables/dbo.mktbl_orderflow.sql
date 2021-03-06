CREATE TABLE [dbo].[mktbl_orderflow]
(
[category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[inv5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[inv7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[inv10] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[vendor #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[vendor] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[vendor style] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[original price] [float] NULL,
[current price] [float] NULL,
[current cost] [float] NULL,
[current event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[current event] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last event #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last event] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[first sales date] [datetime] NULL,
[first receipt date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[last receipt date] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[next receipt date] [datetime] NULL,
[current oh units] [float] NULL,
[current oo units] [float] NULL,
[next 30 days oo units] [float] NULL,
[current backorder units] [float] NULL,
[current backorder cost $] [float] NULL,
[current backorder $] [float] NULL,
[return %] [float] NULL,
[order #] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[internet order #] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[line] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[channel] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[customer #] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[order date] [datetime] NULL,
[item date] [datetime] NULL,
[status] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[event #] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[event] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[demand units] [float] NULL,
[demand cost $] [float] NULL,
[demand $] [float] NULL,
[advertised demand $] [float] NULL,
[tax $] [float] NULL,
[ordered fiscal wk] [float] NULL,
[ordered fiscal month #] [float] NULL,
[ordered fiscal month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ordered fiscal qtr] [float] NULL,
[ordered fiscal year] [float] NULL,
[immediate cancel units] [float] NULL,
[immediate cancel cost $] [float] NULL,
[immediate cancel $] [float] NULL,
[advertised immediate cancel $] [float] NULL,
[immediate cancel date] [datetime] NULL,
[immediate cancel fiscal wk] [float] NULL,
[immediate cancel fiscal month #] [float] NULL,
[immediate cancel fiscal month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[immediate cancel fiscal qtr] [float] NULL,
[immediate cancel fiscal year] [float] NULL,
[cancel date] [datetime] NULL,
[cancel units] [float] NULL,
[cancel cost $] [float] NULL,
[cancel $] [float] NULL,
[advertised cancel $] [float] NULL,
[cancel rsncd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cancel rsn] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cancel fiscal wk] [float] NULL,
[cancel fiscal month #] [float] NULL,
[cancel fiscal month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[cancel fiscal qtr] [float] NULL,
[cancel fiscal year] [float] NULL,
[ship date] [datetime] NULL,
[shipped units] [float] NULL,
[shipped cost $] [float] NULL,
[shipped $] [float] NULL,
[advertised shipped $] [float] NULL,
[shipped fiscal wk] [float] NULL,
[shipped fiscal month #] [float] NULL,
[shipped fiscal month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[shipped fiscal qtr] [float] NULL,
[shipped fiscal year] [float] NULL,
[return date] [datetime] NULL,
[return units] [float] NULL,
[return cost $] [float] NULL,
[return $] [float] NULL,
[advertised return $] [float] NULL,
[return rsncd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[return reason] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[return reason group] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[return reason description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[return fiscal wk] [float] NULL,
[return fiscal month #] [float] NULL,
[return fiscal month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[return fiscal qtr] [float] NULL,
[return fiscal year] [float] NULL,
[exchange date] [datetime] NULL,
[exchange units] [float] NULL,
[exchange cost $] [float] NULL,
[exchange $] [float] NULL,
[advertised exchange $] [float] NULL,
[exchange rsncd] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exchange Reason] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exchange Reason Group] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exchange Reason Description] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[exchange fiscal wk] [float] NULL,
[exchange fiscal month #] [float] NULL,
[exchange fiscal month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[exchange fiscal qtr] [float] NULL,
[exchange fiscal year] [float] NULL
) ON [PRIMARY]
GO
