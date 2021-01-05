SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Tomas Luna
-- Create date: 3/25/2020
-- To import F21 files
-- Description:	Part of Weekly Update routine.
-- =============================================
CREATE PROCEDURE [dbo].[spF21ImportTxtToTbls] 
	-- Add the parameters for the stored procedure here
	@TblName nvarchar(100),
	@TblFilePathName nvarchar(200),
	@PKName nvarchar(50),
	@PKFields nvarchar(200)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @sql nvarchar(max)

	--declare @Tbl int
	--set @Tbl= Object_Id(@TblName)

	--If IndexProperty(Object_Id(@TblName), @PKName, 'IndexId') Is Not Null
	--begin
	--	SELECT @sql = 'ALTER TABLE ' + @TblName 
	--	+ ' DROP CONSTRAINT ' + @PKName + ';'
	--	FROM sys.key_constraints
	--	WHERE [type] = 'PK'
	--	AND [parent_object_id] = OBJECT_ID(@TblName);

	--	EXEC sp_executeSQL @sql
	--end
	
	set @sql= 'TRUNCATE TABLE ' + @TblName
	EXEC (@SQL)

	DECLARE @path NVARCHAR(max)
	SET @path = @TblFilePathName  
	

	DECLARE @bulk_cmd NVARCHAR(max);    
	SET @bulk_cmd = 'BULK INSERT ' + @TblName + ' FROM ''' + @path + ''' WITH (FIRSTROW = 2, FIELDTERMINATOR = ' + '''|''' + ')';

	EXEC sp_executesql @bulk_cmd

	If IndexProperty(Object_Id(@TblName), @PKName, 'IndexId') Is Null
	begin
		SELECT @sql = 'ALTER TABLE ' + @TblName 
		+ ' ADD PRIMARY KEY ' + @PKName + ';'
		FROM sys.key_constraints
		WHERE [type] = 'PK'
		AND [parent_object_id] = OBJECT_ID(@TblName);

		EXEC sp_executeSQL @sql
	end

	


END
GO
