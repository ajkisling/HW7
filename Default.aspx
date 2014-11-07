<%@ Page Title="" Language="VB" MasterPageFile="~/vehicles.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> RIP-OFF RALPH'S Quality Auto Sales
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_selectVehicle" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_Vehicles_HW7 %>" SelectCommand="SELECT * FROM [ajkisling_Vehicles_HW7]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VehicleID" DataSourceID="sql_selectVehicle" Width="877px">
    <Columns>
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year">
        <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
        <ItemStyle HorizontalAlign="Right" />
        </asp:BoundField>
        <asp:HyperLinkField DataNavigateUrlFields="VehicleID" DataNavigateUrlFormatString="viewVehicleDetails.aspx?VehicleID={0}" Text="Select">
        <ItemStyle HorizontalAlign="Center" />
        </asp:HyperLinkField>
    </Columns>
</asp:GridView>
</asp:Content>

