CREATE TABLE [dbo].[MkTbl_ReturnsINV10_0727]
(
[CtrReturnsINV10] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[INV5] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Return %] [float] NULL,
[Shipped Units] [float] NULL,
[Shipped Cost $] [float] NULL,
[Shipped $] [float] NULL,
[Advertised Shipped $] [float] NULL,
[Return Units] [float] NULL,
[Return Cost] [float] NULL,
[Return $] [float] NULL,
[Advertised Return $] [float] NULL,
[CrOn] [datetime] NULL
) ON [PRIMARY]
GO
