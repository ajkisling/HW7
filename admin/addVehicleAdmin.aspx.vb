
Partial Class admin_vehicleDetailsAdmin
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted

        Dim newVehicle As String = e.Values("Model").ToString()

        lbl_Confirm.Text = newVehicle & " has been added."

        Response.AddHeader("REFRESH", "3;URL=DefaultAdmin.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        DetailsView1.Focus()

    End Sub
End Class
