
Imports System.Configuration
Imports System.Data.SqlClient
Imports DAL

Public Class MainSchedule : Implements IMainSchedule
    Private _connection As String
    Public Function Capture(ByVal timeStamp As Dictionary(Of String, String)) As IEnumerable Implements IMainSchedule.Capture
        Dim Schedule As New List(Of StudentSchedule)
        Dim startDate As String = timeStamp("START_DATE")
        Dim stopDate As String = timeStamp("STOP_DATE")
        _connection = ConfigurationManager.ConnectionStrings("FamilyLiteracy").ConnectionString()
        Dim query As String = "SELECT dbo.MainSchedule.Studentid, dbo.StudentProfile.[First Name], dbo.StudentProfile.[Last Name], dbo.MainSchedule.Date, dbo.MainSchedule.TimeIn, dbo.MainSchedule.Timeout, dbo.MainSchedule.ClinicianSignature " &
        "FROM dbo.MainSchedule " &
        "INNER JOIN dbo.StudentProfile ON dbo.MainSchedule.Studentid = dbo.StudentProfile.StudentID " &
        "WHERE [Date] BETWEEN '" & startDate & "' AND '" & stopDate & "' ORDER BY [Last Name] ASC"


        Dim conn As New SqlConnection(_connection)
        Dim cmd As New SqlCommand(query, conn)
        conn.Open()
        Dim reader = cmd.ExecuteReader
        Do While (reader.Read)
            Dim studentID As String = reader.GetInt32(0)
            Dim firstname As String = reader.GetString(1)
            Dim lastname As String = reader.GetString(2)
            Dim dateStamp As String = reader.GetDateTime(3).ToShortDateString
            Dim timeInStamp As String = reader.GetDateTime(4).ToShortTimeString()
            Dim timeOutStamp As String = reader.GetDateTime(5).ToShortTimeString()
            Dim assignedClinician As String = reader.GetString(6)
            Dim fullName As String = lastname & ", " & firstname
            Schedule.Add(New StudentSchedule(studentID, fullName, firstname, lastname, dateStamp, timeInStamp, timeOutStamp, assignedClinician))
        Loop
        Return Schedule.ToList()
    End Function

End Class

Public Class StudentContactInfo : Implements IMainSchedule
    Private _connection As String
    Public Function Capture(student As Dictionary(Of String, String)) As IEnumerable Implements IMainSchedule.Capture

        Dim StudentContactList As New List(Of StudentContacts)
        Dim studentID As Integer = Convert.ToInt32(student("STUDENT_ID"))


        _connection = ConfigurationManager.ConnectionStrings("FamilyLiteracy").ConnectionString()

        Dim query As String = "SELECT dbo.StudentProfile.StudentID, " &
        "dbo.GuardianProfile.[Email], dbo.GuardianProfile.[Home Phone], dbo.GuardianProfile.[Cell Phone]  " &
        "FROM dbo.StudentProfile INNER JOIN dbo.Stud_Guard_Rel ON dbo.StudentProfile.StudentID = dbo.Stud_Guard_Rel.StudentID INNER JOIN dbo.GuardianProfile ON " &
        "dbo.Stud_Guard_Rel.GuardianID=dbo.GuardianProfile.GuardianID WHERE StudentProfile.StudentID='" & studentID & "'"

        Dim conn As New SqlConnection(_connection)
        Dim cmd As New SqlCommand(query, conn)
        conn.Open()
        Dim reader = cmd.ExecuteReader
        Do While (reader.Read)

            Dim email As String = reader.GetValue(1).ToString()
            Dim homePhone As String = reader.GetValue(2).ToString()
            Dim mobilePhone As String = reader.GetValue(3).ToString()
            StudentContactList.Add(New StudentContacts(studentID, mobilePhone, homePhone, email))
        Loop

        Return StudentContactList
    End Function
End Class
Public Class ScheduleScheduleInfo : Implements IMainSchedule
    Private _connection As String
    Public Function Capture(timeStamp As Dictionary(Of String, String)) As IEnumerable Implements IMainSchedule.Capture


        Dim StudentScheduleList As New List(Of StudentSchedule)

        Dim startDate As String = timeStamp("START_DATE")
        Dim stopDate As String = timeStamp("STOP_DATE")
        _connection = ConfigurationManager.ConnectionStrings("FamilyLiteracy").ConnectionString()
        Dim query As String = "SELECT dbo.MainSchedule.StudentId,[dbo].[StudentProfile].[First Name],  " &
        "dbo.[StudentProfile].[Last Name],dbo.MainSchedule.Date, dbo.MainSchedule.TimeIn, dbo.MainSchedule.TimeOut " &
        "FROM MainSchedule INNER JOIN StudentProfile ON MainSchedule.StudentID=StudentProfile.StudentID WHERE [Date] BETWEEN '" & startDate & "' AND '" & stopDate & "' ORDER BY MainSchedule.studentID, MainSchedule.[Date], MainSchedule.TimeIn ASC"


        Dim conn As New SqlConnection(_connection)
        Dim cmd As New SqlCommand(query, conn)
        conn.Open()
        Dim reader = cmd.ExecuteReader
        Do While (reader.Read)
            Dim studentID As Integer = reader.GetInt32(0)
            Dim firstname As String = reader.GetString(1)
            Dim lastname As String = reader.GetString(2)
            Dim dateStamp As String = reader.GetDateTime(3).ToString("M/dd/yyyy")
            Dim timeInStamp As String = reader.GetDateTime(4).ToShortTimeString()
            Dim timeOutStamp As String = reader.GetDateTime(5).ToShortTimeString()
            Dim fullName As String = lastname & ", " & firstname
            StudentScheduleList.Add(New StudentSchedule(studentID, fullName, firstname, lastname, dateStamp, timeInStamp, timeOutStamp, String.Empty))

        Loop




        Return StudentScheduleList
    End Function
End Class
Public Class StudentSchedule
    Public Sub New(ByVal _studentId As Integer, ByVal _student As String, ByVal _firstName As String, ByVal _lastName As String, ByVal _date As String, ByVal _startTime As String, ByVal _stopTime As String, ByVal _assignedClinician As String)
        StudentID = _studentId
        Student = _student
        FirstName = _firstName
        LastName = _lastName
        Date_Stamp = _date
        Start_Time = _startTime
        Stop_Time = _stopTime
        Assigned_Clinician = _assignedClinician
    End Sub
    Public Property StudentID As Integer
    Public Property Student As String
    Public Property FirstName As String

    Public Property LastName As String
    Public Property Date_Stamp As Object

    Public Property Start_Time As String

    Public Property Stop_Time As Object

    Public Property Assigned_Clinician As String


End Class




Public Class StudentContacts

    Public Sub New(ByVal _studentID As Integer, ByVal _mobilePhone As String, ByVal _homePhone As String, ByVal _email As String)
        StudentID = _studentID
        Mobile_Phone = _mobilePhone
        Home_Phone = _homePhone
        Email = _email


    End Sub

    Public Property StudentID As Integer

    Public Property Mobile_Phone As String

    Public Property Home_Phone As String

    Public Property Email As String



End Class

