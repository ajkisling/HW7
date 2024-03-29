﻿<%@ Page Title="" Language="VB" MasterPageFile="~/vehicles.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    RIP-OFF RALPH'S - Search
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_search" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_Vehicles_HW7 %>" SelectCommand="SELECT * FROM [ajkisling_Vehicles_HW7]"></asp:SqlDataSource>
    
    <% If Not IsPostBack Then%>
    
    Search by make or model:&nbsp;
    <asp:TextBox ID="tb_search" runat="server"></asp:TextBox>
    <br />
    
    <% Else%>
    Search by make or model again:&nbsp;
    <asp:TextBox ID="tb_searchPostback" runat="server"></asp:TextBox>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="VehicleID" DataSourceID="sql_search">
        <Columns>
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
        </Columns>
    </asp:GridView>
    <% End If %>
</asp:Content>

