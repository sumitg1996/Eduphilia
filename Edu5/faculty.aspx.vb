Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient
Partial Class faculty
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Abhinit\source\repos\Edu5\Edu5\App_Data\Eduphilia.mdf;Integrated Security=True;MultipleActiveResultsets=true")
    Dim cmd As New SqlCommand
    Private Sub faculty_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim a As String
        Dim count As String
        conn.Open()
        a = "select Name,img from faculty where desig='" + Label3.Text + "' "
        cmd = New SqlCommand(a, conn)
        count = cmd.ExecuteNonQuery()
        Dim table As New DataTable
        Dim adapter As New SqlDataAdapter(cmd)
        adapter.Fill(table)
        Dim lrd As SqlDataReader = cmd.ExecuteReader()

        If lrd.HasRows Then

            While lrd.Read()





                Image11.ImageUrl = lrd("img").ToString

                Label6.Text = lrd("Name").ToString()

            End While
        End If
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
