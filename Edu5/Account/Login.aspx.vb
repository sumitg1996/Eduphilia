Imports Microsoft.AspNet.Identity
Imports Microsoft.AspNet.Identity.EntityFramework
Imports Microsoft.AspNet.Identity.Owin
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports Microsoft.Owin.Security
Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient

Public Partial Class Account_Login
    Inherits Page
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Abhinit\source\repos\Edu5\Edu5\App_Data\Eduphilia.mdf;Integrated Security=True")
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub LogIn(sender As Object, e As EventArgs)

        If IsValid Then
            ' Validate the user password
            Dim manager = New UserManager()
            Dim user As ApplicationUser = manager.Find(UserName.Text, Password.Text)
            If user IsNot Nothing Then
                IdentityHelper.SignIn(manager, user, RememberMe.Checked)
                IdentityHelper.RedirectToReturnUrl(Request.QueryString("ReturnUrl"), Response)
            Else
                FailureText.Text = "Invalid username or password."
                ErrorMessage.Visible = True
            End If
        End If
    End Sub

    Private Sub login_button_Click(sender As Object, e As EventArgs) Handles login_button.Click
        Dim a As String
        Dim count As Integer
        Dim username1 As String
        Dim password1 As String
        Dim password2 As String
        conn.Open()
        a = "select UserName,Password from Login2 where UserName='" + UserName.Text + "' and Password ='" + Password.Text + "'"
        cmd = New SqlCommand(a, conn)
        count = cmd.ExecuteNonQuery()
        Dim lrd As SqlDataReader = cmd.ExecuteReader()
        If lrd.HasRows Then
            While lrd.Read()
                password1 = lrd("Password").ToString()
                username1 = lrd("UserName").ToString()

                password2 = Password.Text

                If password1 = password2 And username1 = UserName.Text Then

                    MsgBox("Login successfully", MsgBoxStyle.OkOnly, "Login")

                    Response.Redirect("~/master.aspx")
                    Response.Close()


                    Password.Text = ""
                    UserName.Text = ""

                End If

            End While


        End If
    End Sub
    Protected Sub Password_TextChanged(sender As Object, e As EventArgs) Handles Password.TextChanged

    End Sub
End Class

