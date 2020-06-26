<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="pgLogin.aspx.cs" Inherits="pgLogin" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>

<asp:Content ID="ContentArea1" ContentPlaceHolderID="Dashboard" runat="server">

    <asp:Label ID="lblUserID" runat="server" Text="User ID:" Font-Names="FreesiaUPC" Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
    <asp:TextBox ID="txtUserID" runat="server" Text="" Font-Italic="True" height="22px" width="128px"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:" Font-Names="FreesiaUPC" Font-Size="Larger"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Text="" Font-Italic="true" height="22px" width="128px"></asp:TextBox>


    <br />
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="btnCreate" runat="server" Text="CREATE" Font-Bold="true" Font-Size="Large" Font-Names="FreesiaUPC" ForeColor="#990033" OnClick="btnCreate_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" Font-Bold="true" OnClick="btnLogin_Click" Font-Size="Larger" Font-Names="FreesiaUPC" ForeColor="#006600"  />
    <br />
</asp:Content>
