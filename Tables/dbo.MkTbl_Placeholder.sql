CREATE TABLE [dbo].[MkTbl_Placeholder]
(
[PlaceholderCtr] [numeric] (18, 0) NOT NULL IDENTITY(1, 1),
[Catalog #] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Category] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Division] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Class] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Style] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV5] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Color] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV7] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[INV10] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Return Rate] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VERSION_NO] [float] NULL,
[GROSS DEMAND] [float] NULL,
[DEMAND COST] [float] NULL,
[DEMAND UNITS] [float] NULL,
[NET DEMAND] [float] NULL,
[UNIT_PRICE] [float] NULL,
[COST_EA] [float] NULL,
[OH U] [int] NULL,
[OO U] [int] NULL,
[HELD REQ U] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Catalog #$disallow_zero_length] CHECK ((len([Catalog #])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Category$disallow_zero_length] CHECK ((len([Category])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Class$disallow_zero_length] CHECK ((len([Class])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Color$disallow_zero_length] CHECK ((len([Color])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Department$disallow_zero_length] CHECK ((len([Department])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Division$disallow_zero_length] CHECK ((len([Division])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$INV10$disallow_zero_length] CHECK ((len([INV10])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$INV5$disallow_zero_length] CHECK ((len([INV5])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$INV7$disallow_zero_length] CHECK ((len([INV7])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Return Rate$disallow_zero_length] CHECK ((len([Return Rate])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Size$disallow_zero_length] CHECK ((len([Size])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [SSMA_CC$MkTbl_Placeholder$Style$disallow_zero_length] CHECK ((len([Style])>(0)))
GO
ALTER TABLE [dbo].[MkTbl_Placeholder] ADD CONSTRAINT [PK_MkTbl_Placeholder] PRIMARY KEY CLUSTERED  ([PlaceholderCtr]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Catalog #]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Catalog #'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Category]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Category'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Class]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Class'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Color]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Color'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[COST_EA]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'COST_EA'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[DEMAND COST]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'DEMAND COST'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[DEMAND UNITS]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'DEMAND UNITS'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Department]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Department'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Division]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Division'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[GROSS DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'GROSS DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[HELD REQ U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'HELD REQ U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[INV10]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'INV10'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[INV5]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'INV5'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[INV7]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'INV7'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[NET DEMAND]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'NET DEMAND'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[OH U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'OH U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[OO U]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'OO U'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Return Rate]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Return Rate'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Size]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Size'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[Style]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'Style'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[UNIT_PRICE]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'UNIT_PRICE'
GO
EXEC sp_addextendedproperty N'MS_SSMA_SOURCE', N'TablesTemp.[MkTbl_Placeholder].[VERSION_NO]', 'SCHEMA', N'dbo', 'TABLE', N'MkTbl_Placeholder', 'COLUMN', N'VERSION_NO'
GO
