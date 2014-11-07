<%@ Page Title="" Language="VB" MasterPageFile="~/vehicles.master" AutoEventWireup="false" CodeFile="DefaultAdmin.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> RIP-OFF RALPH'S Quality Auto Sales
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h4><asp:Label ID="lbl_welcomeDate" runat="server" Text=""></asp:Label></h4>

     <h4><asp:HyperLink ID="link_newVehicle" runat="server" NavigateUrl="~/admin/addVehicleAdmin.aspx">Add New Vehicle</asp:HyperLink></h4>
    <br />
    <asp:SqlDataSource ID="sql_selectVehicle" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_Vehicles_HW7 %>" SelectCommand="SELECT * FROM [ajkisling_Vehicles_HW7]"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VehicleID" DataSourceID="sql_selectVehicle" Width="877px" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
        <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer">
        </asp:BoundField>
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:HyperLinkField DataNavigateUrlFields="VehicleID" DataNavigateUrlFormatString="vehicleDetailsAdmin.aspx?VehicleID={0}" Text="Select" />
    </Columns>
</asp:GridView>
</asp:Content>

