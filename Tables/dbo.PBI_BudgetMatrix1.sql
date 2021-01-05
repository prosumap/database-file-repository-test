CREATE TABLE [dbo].[PBI_BudgetMatrix1]
(
[Fiscal Year] [float] NULL,
[Fiscal Qtr] [float] NULL,
[Fiscal Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal Week] [float] NULL,
[Date] [datetime] NULL,
[Weekday] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Budget # Orders] [money] NULL,
[Budget Orders $] [money] NULL,
[Budget Demand $] [money] NULL,
[Budget Demand Units] [money] NULL,
[Budget Demand Margin $] [money] NULL,
[Budget Shipped $] [money] NULL,
[Budget Shipped Units] [money] NULL,
[Budget Shipped Margin $] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan # Orders] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Orders $] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Demand $] [float] NULL,
[Plan Demand Units] [money] NULL,
[Plan Demand Margin $] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Shipped $] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Shipped Units] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Shipped Margin $] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Demand $ 3#18#20] [float] NULL,
[Plan Demand Units3] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Demand Margin $4] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Shipped $5] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Shipped Units6] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Plan Shipped Margin $7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
