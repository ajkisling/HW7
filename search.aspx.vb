
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tb_search_TextChanged(sender As Object, e As EventArgs) Handles tb_search.TextChanged

        ' Declare a variable
        Dim searchWord As String

        ' Set the variable equal to the SQL statement to perform the search
        searchWord = "Select * From ajkisling_Vehicles_HW7 where (Model Like '%" + tb_search.Text.ToString() + "%') or (Manufacturer Like '%" + tb_search.Text.ToString() + "%')"

        ' Apply the variable (SQL statement) to the data source
        sql_search.SelectCommand = searchWord

    End Sub

    Protected Sub tb_searchPostback_TextChanged(sender As Object, e As EventArgs) Handles tb_searchPostback.TextChanged

        ' Declare a variable
        Dim searchWord As String

        ' Set the variable equal to the SQL statement to perform the search
        searchWord = "Select * From ajkisling_Vehicles_HW7 where (Model Like '%" + tb_searchPostback.Text.ToString() + "%') or (Manufacturer Like '%" + tb_searchPostback.Text.ToString() + "%')"

        ' Apply the variable (SQL statement) to the data source
        sql_search.SelectCommand = searchWord

    End Sub
End Class
