﻿
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lbl_Date.Text = "Welcome! Today is " & DateTime.Now.ToLongDateString & "."

    End Sub
End Class
