<%@ Page Title="" Language="VB" MasterPageFile="~/vehicles.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    RIP-OFF RALPH'S - Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>
        
        Email Address:<br />
        <asp:TextBox ID="senderAddress" runat="server" Width="336px"></asp:TextBox>
        <br />
        <br />
       
         Message:
        <br />         
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="193px" Width="589px"></asp:TextBox>
        
        <br />
        <br />

        <!-- If is postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

        <asp:Button ID="sendMail" runat="server" Text="Send" cssclass="button" />

        <br />
</asp:Content>

