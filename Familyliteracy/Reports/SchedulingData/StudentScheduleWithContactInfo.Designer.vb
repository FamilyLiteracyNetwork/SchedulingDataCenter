<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class StudentScheduleWithContactInfo
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()>
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim ReportDataSource1 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource()
        Me.DateTimePicker1 = New System.Windows.Forms.DateTimePicker()
        Me.DateTimePicker2 = New System.Windows.Forms.DateTimePicker()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.ReportViewer1 = New Microsoft.Reporting.WinForms.ReportViewer()
        Me.StudentScheduleBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.AppointmentContacts = New Familyliteracy.AppointmentContacts()
        Me.GroupBox1.SuspendLayout()
        CType(Me.StudentScheduleBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.AppointmentContacts, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'DateTimePicker1
        '
        Me.DateTimePicker1.Location = New System.Drawing.Point(51, 19)
        Me.DateTimePicker1.Name = "DateTimePicker1"
        Me.DateTimePicker1.Size = New System.Drawing.Size(200, 20)
        Me.DateTimePicker1.TabIndex = 1
        '
        'DateTimePicker2
        '
        Me.DateTimePicker2.Location = New System.Drawing.Point(328, 19)
        Me.DateTimePicker2.Name = "DateTimePicker2"
        Me.DateTimePicker2.Size = New System.Drawing.Size(200, 20)
        Me.DateTimePicker2.TabIndex = 2
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.DateTimePicker1)
        Me.GroupBox1.Controls.Add(Me.DateTimePicker2)
        Me.GroupBox1.Location = New System.Drawing.Point(211, 12)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(577, 51)
        Me.GroupBox1.TabIndex = 3
        Me.GroupBox1.TabStop = False
        '
        'ReportViewer1
        '
        ReportDataSource1.Name = "AppointmentsWithContacts"
        ReportDataSource1.Value = Me.StudentScheduleBindingSource
        Me.ReportViewer1.LocalReport.DataSources.Add(ReportDataSource1)
        Me.ReportViewer1.LocalReport.ReportEmbeddedResource = "Familyliteracy.AppointmentContactReport.rdlc"
        Me.ReportViewer1.Location = New System.Drawing.Point(13, 84)
        Me.ReportViewer1.Name = "ReportViewer1"
        Me.ReportViewer1.Size = New System.Drawing.Size(1032, 323)
        Me.ReportViewer1.TabIndex = 5
        '
        'StudentScheduleBindingSource
        '
        Me.StudentScheduleBindingSource.DataMember = "StudentSchedule"
        Me.StudentScheduleBindingSource.DataSource = Me.AppointmentContacts
        '
        'AppointmentContacts
        '
        Me.AppointmentContacts.DataSetName = "AppointmentContacts"
        Me.AppointmentContacts.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'StudentScheduleWithContactInfo
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1057, 419)
        Me.Controls.Add(Me.ReportViewer1)
        Me.Controls.Add(Me.GroupBox1)
        Me.Name = "StudentScheduleWithContactInfo"
        Me.Text = "StudentScheduleWithContactInfo"
        Me.GroupBox1.ResumeLayout(False)
        CType(Me.StudentScheduleBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.AppointmentContacts, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents DateTimePicker1 As DateTimePicker
    Friend WithEvents DateTimePicker2 As DateTimePicker
    Friend WithEvents GroupBox1 As GroupBox
    Friend WithEvents ReportViewer1 As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents AppointmentContacts As AppointmentContacts
    Friend WithEvents StudentScheduleBindingSource As BindingSource
End Class
