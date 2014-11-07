
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub login_Admin_LoggedIn(sender As Object, e As EventArgs) Handles login_Admin.LoggedIn

        If Roles.IsUserInRole(login_Admin.UserName, "r_ajkisling_Admin") = True Then

            Response.Redirect("~/admin/DefaultAdmin.aspx")

        Else : Response.Redirect("~/Default.aspx")

        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        login_Admin.Focus()

    End Sub
End Class
