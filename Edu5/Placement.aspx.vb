Imports System.Data
Imports System.Data.Sql

Imports System.Data.SqlClient

Partial Class Placement
    Inherits System.Web.UI.Page

    Private ReadOnly ex As Object
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Abhinit\source\repos\Edu5\Edu5\App_Data\Eduphilia.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Private dr As Object

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click



    End Sub

    Private Sub Placement_Load(sender As Object, e As EventArgs) Handles Me.Load
        '  Dim a As String
        '  Dim count As String
        ' conn.Open()
        ' a = "select Name,img from faculty where desig='" + Label3.Text + "' "
        ' cmd = New SqlCommand(a, conn)
        ' count = cmd.ExecuteNonQuery()
        ' Dim lrd As SqlDataReader = cmd.ExecuteReader()

        'If lrd.HasRows Then

        'While lrd.Read()
        'Do something here




        ' Image11.ImageUrl = lrd("img").ToString

        'Label2.Text = lrd("Name").ToString()


        ' End While
        'End If
    End Sub
    ' Protected Sub year_TextChanged(sender As Object, e As EventArgs) Handles year.TextChanged
    ' Panel1.Visible = False

    ' Panel2.Visible = True

    '  End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim b As String
        Try
            If Emp_name.Text.Length = 0 Then
                MsgBox("Name field is Empty. Please enter data into Name field")
                Me.Emp_name.TabIndex = 0

            ElseIf Emp_name0.Text.Length = 0 Then
                MsgBox("Email id field is Empty. Please enter data into Emaild")
                Emp_name0.Focus()
            ElseIf Placed_name1.Text.Length = 0 Then
                MsgBox("feedback field is Empty. Please enter data into feedback ")
                Placed_name1.Focus()
            Else Dim cmdd As New SqlCommand
                b = "insert into feedback(Name,Email,Feedback) values('" + Emp_name.Text + "','" + Emp_name0.Text + "', '" + Placed_name1.Text + "')"
                cmdd = New SqlCommand(b, conn)

                cmdd.ExecuteNonQuery()
                MsgBox("Inserted Success", MsgBoxStyle.Information, "Feedback")

                Response.Redirect("~/Default.aspx")
                conn.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
    End Sub
End Class
