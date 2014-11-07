
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub login_Admin_LoggedIn(sender As Object, e As EventArgs) Handles login_Admin.LoggedIn

        If Roles.IsUserInRole(login_Admin.UserName, "r_ajkisling_Admin") = True Then

            Response.Redirect("~/admin/vehicleDetailsAdmin.aspx")

        Else : Response.Redirect("~/gridView.aspx")

        End If

    End Sub
End Class
