/****** Object:  StoredProcedure [dbo].[GuardianFullNameListing]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GuardianFullNameListing]
(@fullname nvarchar(50))
AS
BEGIN
	SELECT [First Name], [Last Name]
FROM dbo.GuardianProfile
Where [Last Name]<>'' OR [First Name]<>''
ORDER BY [Last Name], [First Name]
END

GO
/****** Object:  StoredProcedure [dbo].[SearchClinicianHomePhoneNumber]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchClinicianHomePhoneNumber]
	(@phoneNumber varchar(25))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Phone]  FROM [dbo].[Clinician] Where [Phone] Like @phoneNumber + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchGuardianCellPhoneNumber]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchGuardianCellPhoneNumber]
	(@phoneNumber varchar(25)='7')
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Cell Phone]  FROM [dbo].[GuardianProfile] Where [Cell Phone] Like @phoneNumber + '%'
END


GO
/****** Object:  StoredProcedure [dbo].[SearchGuardianFaxPhoneNumber]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchGuardianFaxPhoneNumber]
	(@phoneNumber varchar(25))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Fax]  FROM [dbo].[GuardianProfile] Where [Fax] Like @phoneNumber + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchGuardianFirstName]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchGuardianFirstName]
	(@firstname varchar(50))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [First Name]  FROM [dbo].[GuardianProfile] Where [First Name] Like @firstname + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchGuardianHomePhoneNumber]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchGuardianHomePhoneNumber]
	(@phoneNumber varchar(25))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Home Phone]  FROM [dbo].[GuardianProfile] Where [Home Phone] Like @phoneNumber + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchGuardianLastName]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchGuardianLastName]
	(@lastname varchar(50))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select Distinct [Last Name] FROM [dbo].[GuardianProfile] Where [Last Name] Like @lastname + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchGuardianWorkPhoneNumber]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchGuardianWorkPhoneNumber]
	(@phoneNumber varchar(25))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Work Phone]  FROM [dbo].[GuardianProfile] Where [Work Phone] Like @phoneNumber + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchStudentCellPhoneNumber]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchStudentCellPhoneNumber]
	(@phoneNumber varchar(25))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [Cell Phone]  FROM [dbo].[GuardianProfile] Where [Cell Phone] Like @phoneNumber + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchStudentFirstName]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchStudentFirstName]
	(@firstname varchar(50)

	)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select [First Name]  FROM [dbo].[StudentProfile] Where [First Name] Like @firstname + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[SearchStudentLastName]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchStudentLastName]
	(@lastname varchar(50))
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select Distinct [Last Name] FROM [dbo].[StudentProfile] Where [Last Name] Like @lastname + '%'
END


GO
/****** Object:  StoredProcedure [dbo].[spGuardianFullNameListing]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spGuardianFullNameListing]
AS
BEGIN
	SELECT [First Name], [Last Name]
FROM dbo.GuardianProfile
Where [Last Name]<>'' AND [First Name]<>''
ORDER BY [Last Name], [First Name]
END

GO
/****** Object:  StoredProcedure [dbo].[spSearchGuardianProfileUsingCellPhone]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchGuardianProfileUsingCellPhone]
	(@cellPhone nvarchar(20))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM GuardianProfile Where [Cell Phone] Like @cellPhone + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[spSearchGuardianProfileUsingFaxNumber]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchGuardianProfileUsingFaxNumber]
	(@faxnumber nvarchar(20))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM GuardianProfile Where [Fax] Like @faxnumber + '%'

END

GO
/****** Object:  StoredProcedure [dbo].[spSearchGuardianProfileUsingFirstName]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchGuardianProfileUsingFirstName]
(@firstname nvarchar(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM GuardianProfile Where [First Name] Like @firstname + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[spSearchGuardianProfileUsingHomePhone]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchGuardianProfileUsingHomePhone]
	(@homePhone nvarchar(20))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM GuardianProfile Where [Home Phone] LIKE @homePhone + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[spSearchGuardianProfileUsingLastName]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchGuardianProfileUsingLastName]
	(@lastname nvarchar(50)='W')
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM GuardianProfile Where [Last Name] LIKE @lastname + '%'
END

GO
/****** Object:  StoredProcedure [dbo].[spSearchGuardianProfileUsingStudentNo]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchGuardianProfileUsingStudentNo]
(@studentNo nvarchar(10))

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	SELECT  GuardianProfile.GuardianID,GuardianProfile.[Last Name] , GuardianProfile.[First Name], GuardianProfile.[Guardian Type], Email, [Alt Email], [Address], City, [State], [Zip Code], [Home Phone], [Cell Phone], [Work Phone], Fax
FROM  StudentProfile INNER JOIN Stud_Guard_Rel ON dbo.Stud_Guard_Rel.StudentID=StudentProfile.StudentID  INNER JOIN
                  GuardianProfile ON dbo.Stud_Guard_Rel.GuardianID = dbo.GuardianProfile.GuardianID
				  where StudentProfile.StudentID=@studentNo
End 

GO
/****** Object:  StoredProcedure [dbo].[spSearchGuardianProfileUsingWorkPhone]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchGuardianProfileUsingWorkPhone]
	(@workPhone nvarchar(20))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM GuardianProfile Where [Work Phone] LIKE @workPhone + '%'

END

GO
/****** Object:  StoredProcedure [dbo].[spSearchStudentProfileUsingGuardianNo]    Script Date: 4/11/2015 2:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSearchStudentProfileUsingGuardianNo]
(@guardianNo nvarchar(10))

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	SELECT  dbo.StudentProfile.StudentID,dbo.StudentProfile.[First Name], 
                  dbo.StudentProfile.[Last Name], dbo.StudentProfile.DOB, dbo.StudentProfile.Gender, dbo.StudentProfile.[District Zone], dbo.StudentProfile.[School Attending], dbo.StudentProfile.[Initial Inquiry Date], 
                  dbo.StudentProfile.[Assessment Date], dbo.StudentProfile.[Report Discussion Date], dbo.StudentProfile.[Tutoring Start Date],  dbo.StudentProfile.[Tutoring Stop Date], dbo.StudentProfile.Active,
                  dbo.StudentProfile.InitialNotes
FROM     dbo.GuardianProfile INNER JOIN
                  dbo.Stud_Guard_Rel ON dbo.GuardianProfile.GuardianID = dbo.Stud_Guard_Rel.GuardianID INNER JOIN
                  dbo.StudentProfile ON dbo.Stud_Guard_Rel.StudentID = dbo.StudentProfile.StudentID
				  where GuardianProfile.GuardianID=@guardianNo
End 

GO
