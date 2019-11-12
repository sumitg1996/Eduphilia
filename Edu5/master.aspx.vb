Imports System.Data
Imports System.Data.Sql
Imports System.Data.SqlClient

Partial Class master
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Abhinit\source\repos\Edu5\Edu5\App_Data\Eduphilia.mdf;Integrated Security=True;MultipleActiveResultsets=true")
    Dim cmd As New SqlCommand

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim A As String
        Try
            If Emp_name.Text.Length = 0 Then
                MsgBox("Name field is Empty. Please enter data into Name field")
                Me.Emp_name.TabIndex = 0
                Emp_name.Focus()
            Else Dim path As String
                If Pic_up.HasFile Then
                    path = "Image/" + Pic_up.FileName
                    Pic_up.SaveAs(Server.MapPath("image/") + Pic_up.FileName)
                End If
                A = "insert into faculty(name,desig,img) values('" + Emp_name.Text + "','" + desig.Text + "', '" + path + "')"
                cmd = New SqlCommand(A, conn)
                cmd.ExecuteNonQuery()
                MsgBox("insert successfully")
                Response.Redirect("~/master.aspx")
                conn.Close()
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try













    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim cmd As New SqlCommand
        Dim path3 As String


        If Pic_up.HasFile Then
                    path3 = "Image/" + Pic_up.FileName
            Pic_up.SaveAs(Server.MapPath("Image/") + Pic_up.FileName)
        End If

        Dim updateQuery As String = "UPDATE faculty SET img = '" + path3 + "' WHERE name = '" + desig2.Text.Length = 0 + "'"
        cmd = New SqlCommand(updateQuery, conn)
                cmd.ExecuteNonQuery()
                MsgBox("updated successfully", MsgBoxStyle.OkOnly, "Faculty Detail")

                Response.Redirect("~/master.aspx")


    End Sub
    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim A As String
        Dim path As String
        Try
            If Tittle_txt.Text = "" Or News.Text = "" Then
                MsgBox("Please fill the all text")
                Me.Emp_name.TabIndex = 0
                News.Focus()
            Else
                If File_up.HasFile Then
                    path = "Pdf/" + File_up.FileName
                    File_up.SaveAs(Server.MapPath("Pdf/") + File_up.FileName)
                End If

                A = "insert into news(NEWS,title,Attach) values('" + News.Text + "','" + Tittle_txt.Text + "', '" + path + "')"
                cmd = New SqlCommand(A, conn)
                cmd.ExecuteNonQuery()
                MsgBox("insert successfully", MsgBoxStyle.OkOnly, "News detail")
                Response.Redirect("~/master.aspx")

            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        'Dim A As String

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        conn.Open()
        desig2.Visible = False
        Dim d As String
        Dim count As String
        d = " select Name for news"

        Button4.Enabled = True
        Button2.Enabled = False
        Button5.Enabled = False
    End Sub
    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim q As String
        Dim cmd As New SqlCommand
        Dim sqlEmp As String
        Dim path As String
        If File_up.HasFile Then
            path = "Pdf/" + File_up.FileName
            File_up.SaveAs(Server.MapPath("Pdf/") + File_up.FileName)
        End If
        Dim updateQuery As String = "UPDATE news SET news = '" & News.Text & "',title = '" & Tittle_txt.Text & "',attach = '" + path + "' WHERE title = '" + id_news.Text + "'"
        cmd = New SqlCommand(updateQuery, conn)
        cmd.ExecuteNonQuery()
        MsgBox("update successfully", MsgBoxStyle.OkOnly, "News Update")
        Response.Redirect("~/master.aspx")


    End Sub
    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        id_news.Visible = True
        Button4.Enabled = False
        Button6.Enabled = False
        Button5.Enabled = True
    End Sub
    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles News.TextChanged

    End Sub

    Private Sub TextBox3_Unload(sender As Object, e As EventArgs) Handles News.Unload
        News.Text = StrConv(News.Text, vbProperCase)
    End Sub
    Protected Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles Tittle_txt.TextChanged
        Tittle_txt.Text = Tittle_txt.Text.ToUpper()
    End Sub
    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles Emp_name.TextChanged
        'Emp_name.Text = Emp_name.Text.Substring(0, 1).ToUpper() + Emp_name.Text.Substring(1)
    End Sub

    Private Sub TextBox2_Unload(sender As Object, e As EventArgs) Handles Emp_name.Unload
        Emp_name.Text = StrConv(Emp_name.Text, vbProperCase)
    End Sub

    Private Sub TextBox4_Unload(sender As Object, e As EventArgs) Handles Tittle_txt.Unload
        Tittle_txt.Text = StrConv(Tittle_txt.Text, vbProperCase)
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Button1.Enabled = False
        desig2.Visible = True

        Emp_name.Enabled = False
        Button2.Enabled = True
        Button3.Enabled = False
        desig.Enabled = False

    End Sub
    Protected Sub desig2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles desig2.SelectedIndexChanged
        Response.Redirect("~/master.aspx")

    End Sub

    Private Sub desig2_TextChanged(sender As Object, e As EventArgs) Handles desig2.TextChanged

    End Sub
    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Dim k As String
        Dim htp As String
        Dim A As String
        Dim path As String
        Try
            If Placed_name.Text = "" Or company.Text = "" Then
                MsgBox("Please fill the all text")
                ' Me..TabIndex = 0
            Else
                Dim cmd As New SqlCommand
                If Pic_up2.HasFile Then
                    htp = "Image/" + Pic_up2.FileName
                    Pic_up2.SaveAs(Server.MapPath("image/") + Pic_up2.FileName)
                End If

                k = "insert into placement(name,photo,compony,year) values('" + Placed_name.Text + "','" + htp + "', '" + company.Text + "',' " + year.Text + "')"
                cmd = New SqlCommand(k, conn)
                cmd.ExecuteNonQuery()
                MsgBox("insert successfully", MsgBoxStyle.OkOnly, "Placement Detail")
                Response.Redirect("~/master.aspx")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
    End Sub


    Private Sub desig_TextChanged(sender As Object, e As EventArgs) Handles desig.TextChanged
        desig2.Items.Clear()
        Dim a As String
        Dim count As String
        a = "select Name from faculty where desig='" + desig.Text + "'"
        cmd = New SqlCommand(a, conn)
        count = cmd.ExecuteNonQuery()
        Dim lrd As SqlDataReader = cmd.ExecuteReader()
        If lrd.HasRows Then
            While lrd.Read()
                'Emp_name.Text = lrd("name").ToString
                desig2.Items.Add(lrd("name").ToString)
            End While
        End If
    End Sub

    Protected Sub desig_SelectedIndexChanged(sender As Object, e As EventArgs) Handles desig.SelectedIndexChanged

    End Sub




    Private Function Asc(keyChar As Object) As Integer
        Throw New NotImplementedException()
    End Function
    Protected Sub Placed_name_TextChanged(sender As Object, e As EventArgs) Handles Placed_name.TextChanged

    End Sub

    Private Sub id_news_TextChanged(sender As Object, e As EventArgs) Handles id_news.TextChanged
        Tittle_txt.Text = id_news.Text
    End Sub

End Class
