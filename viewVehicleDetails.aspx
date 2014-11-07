<%@ Page Title="" Language="VB" MasterPageFile="~/vehicles.master" AutoEventWireup="false" CodeFile="viewVehicleDetails.aspx.vb" Inherits="viewVehicleDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    RIP-OFF RALPH'S - View Vehicle Details
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_viewDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_Vehicles_HW7 %>" SelectCommand="SELECT * FROM [ajkisling_Vehicles_HW7] WHERE ([VehicleID] = @VehicleID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="VehicleID" QueryStringField="VehicleID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="VehicleID" DataSourceID="sql_viewDetails" Height="50px" Width="508px">
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
        </Fields>
    </asp:DetailsView>
</asp:Content>

