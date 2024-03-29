﻿<%@ Page Title="" Language="VB" MasterPageFile="~/vehicles.master" AutoEventWireup="false" CodeFile="vehicleDetailsAdmin.aspx.vb" Inherits="admin_vehicleDetailsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    RIP-OFF RALPH'S - admin page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="lbl_Confirm" runat="server"></asp:Label>
    <br />
    <asp:SqlDataSource ID="sql_VehiclesAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_Vehicles_HW7 %>" DeleteCommand="DELETE FROM [ajkisling_Vehicles_HW7] WHERE [VehicleID] = @VehicleID" InsertCommand="INSERT INTO [ajkisling_Vehicles_HW7] ([VIN], [Year], [Manufacturer], [Model], [BodyStyle], [Mileage], [ExteriorColor], [InteriorColor], [Price], [Condition]) VALUES (@VIN, @Year, @Manufacturer, @Model, @BodyStyle, @Mileage, @ExteriorColor, @InteriorColor, @Price, @Condition)" SelectCommand="SELECT * FROM [ajkisling_Vehicles_HW7] WHERE ([VehicleID] = @VehicleID)" UpdateCommand="UPDATE [ajkisling_Vehicles_HW7] SET [VIN] = @VIN, [Year] = @Year, [Manufacturer] = @Manufacturer, [Model] = @Model, [BodyStyle] = @BodyStyle, [Mileage] = @Mileage, [ExteriorColor] = @ExteriorColor, [InteriorColor] = @InteriorColor, [Price] = @Price, [Condition] = @Condition WHERE [VehicleID] = @VehicleID">
            <DeleteParameters>
                <asp:Parameter Name="VehicleID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="VIN" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Manufacturer" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="BodyStyle" Type="String" />
                <asp:Parameter Name="Mileage" Type="String" />
                <asp:Parameter Name="ExteriorColor" Type="String" />
                <asp:Parameter Name="InteriorColor" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Condition" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="VehicleID" QueryStringField="VehicleID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="VIN" Type="String" />
                <asp:Parameter Name="Year" Type="Int32" />
                <asp:Parameter Name="Manufacturer" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="BodyStyle" Type="String" />
                <asp:Parameter Name="Mileage" Type="String" />
                <asp:Parameter Name="ExteriorColor" Type="String" />
                <asp:Parameter Name="InteriorColor" Type="String" />
                <asp:Parameter Name="Price" Type="String" />
                <asp:Parameter Name="Condition" Type="String" />
                <asp:Parameter Name="VehicleID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="VehicleID" DataSourceID="sql_VehiclesAdmin" Height="50px" Width="314px">
            <Fields>
                <asp:BoundField DataField="VIN" HeaderText="VIN" SortExpression="VIN" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="BodyStyle" HeaderText="Body Style" SortExpression="BodyStyle" />
                <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
                <asp:BoundField DataField="ExteriorColor" HeaderText="Exterior Color" SortExpression="ExteriorColor" />
                <asp:BoundField DataField="InteriorColor" HeaderText="Interior Color" SortExpression="InteriorColor" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

</asp:Content>

