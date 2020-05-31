<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WEB460Project.master" CodeFile="LoginForm.aspx.cs" Inherits="LoginForm" %>

<%@ MasterType VirtualPath="~/WEB460Project.master" %>

<asp:Content id="Login" contentplaceholderid="Tabs" runat="server">
    <asp:Panel ID="pnlSignIn" runat="server" BackColor="#9EDED5" BorderColor="#333333" BorderStyle="Groove" BorderWidth="3px" Direction="LeftToRight" Height="350px" HorizontalAlign="Justify" style="margin-left: 311px; margin-right: 395px" Width="500px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="imgSmLogo" runat="server" Height="90px" ImageUrl="~/Images/smLogo.png" Width="100px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblUsername" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" ForeColor="#474D63" Text="Username / Email :"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtUsername" runat="server" BackColor="#FFCC99" Font-Italic="True" Font-Names="Modern No. 20" Font-Size="Medium" ForeColor="#474D63" Width="250px">    Username</asp:TextBox>
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblPassword" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" ForeColor="#474D63" Text="Password : "></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" BackColor="#FFCC99" Font-Italic="True" Font-Names="Modern No. 20" Font-Size="Medium" ForeColor="#474D63" Width="250px">    Password</asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="cbRemember" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Smaller" Text="   Remember Me" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCreateAccount" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" ForeColor="#CC3300" Text="Create Account" PostBackUrl="~/UserAccountDetailsConfirm.aspx" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnLogin" runat="server" Font-Bold="True" Font-Names="Goudy Old Style" Font-Size="Large" ForeColor="#006600" Text="Login" OnClick="btnLogin_Click" />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
</asp:Content>
