Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.IO
Partial Class _Default
    Inherits Page
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Abhinit\source\repos\Edu5\Edu5\App_Data\Eduphilia.mdf;Integrated Security=True; MultipleActiveResultsets=true")
    Dim cmd As New SqlCommand
    Public Property Messagebox As Object

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim a As String
        Dim count As String
        conn.Open()
        a = "select Name,img from faculty where desig='" + Label3.Text + "' "
        cmd = New SqlCommand(a, conn)
        count = cmd.ExecuteNonQuery()
        Dim lrd As SqlDataReader = cmd.ExecuteReader()

        If lrd.HasRows Then

            While lrd.Read()





                Image11.ImageUrl = lrd("img").ToString

                Label2.Text = lrd("Name").ToString()


            End While
        End If

    End Sub

    Protected Sub ImageButton4_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton4.Click

    End Sub


    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


        Dim b As String
        Try
            If Emp_name.Text.Length = 0 Then
                MsgBox("Name field is Empty. Please enter data into Name field")
                Me.Emp_name.TabIndex = 0
                Emp_name.Focus()
            ElseIf Emp_name2.Text.Length = 0 Then
                MsgBox("Email id field is Empty. Please enter data into Emaild")
                Emp_name2.Focus()
            ElseIf feedback.Text.Length = 0 Then
                MsgBox("feedback field is Empty. Please enter data into feedback ")
                feedback.Focus()
            Else Dim cmdd As New SqlCommand
                b = "insert into feedback(Name,Email,Feedback) values('" + Emp_name.Text + "','" + Emp_name2.Text + "', '" + feedback.Text + "')"
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

    Private Sub feedback_TextChanged(sender As Object, e As EventArgs) Handles feedback.TextChanged

    End Sub
End Class