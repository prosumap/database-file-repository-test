CREATE TABLE [dbo].[SSRS_mktbl_dailyflash1]
(
[date] [datetime] NOT NULL,
[Fiscal Week] [float] NULL,
[Fiscal Month #] [float] NULL,
[Fiscal Month] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Fiscal Qtr] [float] NULL,
[Fiscal Year] [float] NULL,
[# orders] [int] NULL,
[demand units] [float] NULL,
[demand cost $] [float] NULL,
[demand $] [float] NULL,
[advertised demand $] [float] NULL,
[demand margin $] [float] NULL,
[demand margin %] [float] NULL,
[demand aur] [float] NULL,
[demand auc] [float] NULL,
[demand tax $] [float] NULL,
[demand shipping revenue $] [float] NULL,
[cancel units] [float] NULL,
[cancel cost $] [float] NULL,
[cancel $] [float] NULL,
[advertised cancel $] [float] NULL,
[cancel margin $] [float] NULL,
[cancel margin %] [float] NULL,
[shipped units] [float] NULL,
[shipped cost $] [float] NULL,
[shipped $] [float] NULL,
[advertised shipped $] [float] NULL,
[shipped margin $] [float] NULL,
[shipped margin %] [float] NULL,
[shipped aur] [float] NULL,
[shipped auc] [float] NULL,
[shipped shipping revenue $] [float] NULL,
[returned units] [float] NULL,
[returned cost $] [float] NULL,
[returned $] [float] NULL,
[advertised returned $] [float] NULL,
[returned margin $] [float] NULL
) ON [PRIMARY]
GO
