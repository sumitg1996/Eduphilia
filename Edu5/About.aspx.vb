Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.IO
Partial Class About
    Inherits Page
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Abhinit\source\repos\Edu5\Edu5\App_Data\Eduphilia.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
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

                Label1.Text = lrd("Name").ToString()

            End While
        End If
    End Sub
End Class