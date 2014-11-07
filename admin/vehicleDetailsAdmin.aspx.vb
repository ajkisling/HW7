
Partial Class admin_vehicleDetailsAdmin
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim deletedVehicle As String = e.Values("Model").ToString()

        lbl_Confirm.Text = deletedVehicle & " has been deleted."

        Response.AddHeader("REFRESH", "3;URL=DefaultAdmin.aspx")

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated

        lbl_Confirm.Text = "Record has been updated."

        Response.AddHeader("REFRESH", "3;URL=DefaultAdmin.aspx")

    End Sub

End Class
