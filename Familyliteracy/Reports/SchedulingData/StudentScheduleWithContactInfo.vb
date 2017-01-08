Imports DAL
Imports Microsoft.Reporting.WebForms

Public Class StudentScheduleWithContactInfo
    Private Sub DateTimePicker1_ValueChanged(sender As Object, e As EventArgs) Handles DateTimePicker1.ValueChanged
        Dim startDate, endDate As DateTime
        DateTimePicker2.Value = DateTimePicker1.Value
        startDate = DateTimePicker1.Value
        endDate = DateTimePicker2.Value
        DisplayStudentSchedules(startDate, endDate)
    End Sub

    Private Sub DisplayStudentSchedules(startDate As Date, endDate As Date)
        Dim schedule As IMainSchedule = New ScheduleScheduleInfo
        Dim contacts As IMainSchedule = New StudentContactInfo
        Dim studentSearchParameters As New Dictionary(Of String, String)
        studentSearchParameters.Add("START_DATE", startDate)
        studentSearchParameters.Add("STOP_DATE", endDate)
        Dim StudentInfoScheduleListing As IEnumerable(Of StudentSchedule)
        Dim StudentInfoContactList As New List(Of StudentScheduleContactList)
        Dim StudentContacts As IEnumerable(Of StudentContacts)
        StudentInfoScheduleListing = schedule.Capture(studentSearchParameters)


        Dim index As Integer = 0
        Dim totalnumber = StudentInfoScheduleListing.Count
        studentSearchParameters.Clear()

restart:
        For Each item In StudentInfoScheduleListing.ToArray.Skip(index).Take(totalnumber)
            Dim matchingSet As IEnumerable(Of StudentSchedule) = From p In StudentInfoScheduleListing
                                                                 Where p.StudentID = item.StudentID And p.Date_Stamp = item.Date_Stamp
                                                                 Select p

            studentSearchParameters.Clear()
            studentSearchParameters.Add("STUDENT_ID", item.StudentID)
            StudentContacts = contacts.Capture(studentSearchParameters)


            Dim matchingContact = StudentContacts.FirstOrDefault

            Dim studentName As String = item.Student
            Dim studentNumber As Integer = item.StudentID
            Dim studentDate As String = item.Date_Stamp
            Dim startTime As String = item.Start_Time
            Dim email As String = String.Empty
            Dim homePhone As String = String.Empty
            Dim mobilePhone As String = String.Empty

            Dim finalTime As String = ""
            For Each student In matchingSet
                index = index + 1
                finalTime = student.Stop_Time
            Next
            Dim studentSchedule As String = studentDate & " " & startTime & " - " & finalTime
            If matchingContact IsNot Nothing Then
                email = matchingContact.Email.Trim()
                If matchingContact.Home_Phone IsNot Nothing Then
                    homePhone = matchingContact.Home_Phone.ToString().Trim()
                End If
                If matchingContact.Mobile_Phone IsNot Nothing Then
                    mobilePhone = matchingContact.Mobile_Phone.ToString().Trim()
                End If
            End If
            totalnumber = totalnumber - index
            StudentInfoContactList.Add(New StudentScheduleContactList(studentNumber, studentName, studentDate, startTime, studentSchedule, email, mobilePhone, homePhone))

            GoTo restart
        Next
        Dim datasource As New ReportDataSource("AppointmentContacts", StudentInfoContactList)

        StudentScheduleBindingSource.DataSource = StudentInfoContactList
        Me.ReportViewer1.RefreshReport()


    End Sub




    Private Sub StudentScheduleWithContactInfo_Load(sender As Object, e As EventArgs) Handles MyBase.Load


    End Sub

    Private Sub DateTimePicker2_ValueChanged(sender As Object, e As EventArgs) Handles DateTimePicker2.ValueChanged
        Dim startDate, endDate As DateTime

        startDate = DateTimePicker1.Value
        endDate = DateTimePicker2.Value
        DisplayStudentSchedules(startDate, endDate)
    End Sub
End Class

Public Class StudentScheduleContactList
    Public Sub New(ByVal _studentID As String, ByVal _name As String, ByVal _date As String, ByVal _startTime As String, ByVal _schedule As String, ByVal _email As String, ByVal _mobilePhone As String, ByVal _homePhone As String)
        StudentID = _studentID
        Student = _name
        Date_Stamp = _date
        Start_Time = _startTime
        Schedule = _schedule
        Email = _email
        Moblie_Phone = _mobilePhone
        Home_Phone = _homePhone
    End Sub
    Public Property StudentID As Integer
    Public Property Student As String

    Public Property Date_Stamp As String

    Public Property Start_Time As String

    Public Property Schedule As String

    Public Property Email As String

    Public Property Moblie_Phone As String


    Public Property Home_Phone As String

End Class