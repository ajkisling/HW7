<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridView.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJ's Used Cars</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;<asp:Label ID="lbl_Date" runat="server"></asp:Label>
        <asp:SqlDataSource ID="sql_vehicles" runat="server" ConnectionString="<%$ ConnectionStrings:ajkisling_Vehicles_HW7 %>" SelectCommand="SELECT * FROM [ajkisling_Vehicles_HW7]">
            
        </asp:SqlDataSource>
        <asp:GridView ID="ViewVehicles" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="VehicleID" DataSourceID="sql_vehicles">
            <Columns>
                <asp:BoundField DataField="VehicleID" HeaderText="VehicleID" InsertVisible="False" ReadOnly="True" SortExpression="VehicleID" />
                <asp:BoundField DataField="VIN" HeaderText="VIN" SortExpression="VIN" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Manufacturer" HeaderText="Manufacturer" SortExpression="Manufacturer" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="BodyStyle" HeaderText="BodyStyle" SortExpression="BodyStyle" />
                <asp:BoundField DataField="Mileage" HeaderText="Mileage" SortExpression="Mileage" />
                <asp:BoundField DataField="ExteriorColor" HeaderText="ExteriorColor" SortExpression="ExteriorColor" />
                <asp:BoundField DataField="InteriorColor" HeaderText="InteriorColor" SortExpression="InteriorColor" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
