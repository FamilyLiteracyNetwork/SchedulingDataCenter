USE [FamilyLiteracy.mdf]
GO
/****** Object:  StoredProcedure [dbo].[SearchStudentLastName]    Script Date: 3/28/2015 1:17:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SearchStudentLastName]
	(@lastname varchar(50))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select Distinct [Last Name] FROM [dbo].[StudentProfile] Where [Last Name] Like @lastname + '%'
END

