<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="pgUserDetailsConfirm.aspx.cs" Inherits="pgUserDetailsConfirm" %>

<%@ MasterType VirtualPath="~/MasterPage.master" %>

<%@ PreviousPageType VirtualPath="~/pgUserDetails.aspx" %>
<asp:Content ID="ContentArea1" ContentPlaceHolderID="Dashboard" runat="server">
    <br />
        <asp:Label ID="lblConfirmNew" runat="server" BackColor="#325000" Font-Names="FreesiaUPC" Text="Confirm New User:" Width="300px" Font-Bold="True" Font-Size="Larger" ForeColor="White"></asp:Label>
        <br />
        <br />
    <asp:Label ID="lblFirstName" runat="server" Text="First Name:" Font-Names="FreesiaUPC" Font-Size="Larger"></asp:Label>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Label ID="lblFName" runat="server" Height="20px" Font-Names="FreesiaUPC" Font-Size="Large" Style="position: relative" Width="128px"></asp:Label>
    <br />
    <asp:Label ID="lblLastName" runat="server" Text="Last Name:" Font-Names="FreesiaUPC" Font-Size="Larger"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="lblLName" runat="server" Height="20px" Style="position: relative" Width="128px" Font-Names="FreesiaUPC" Font-Size="Large"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblLocation" runat="server" Text="Address:" Font-Names="FreesiaUPC" Font-Size="Larger"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="lblAddress" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Style="position: relative; top: 0px; left: 0px; height: 23px; width: 175px;" Height="20px"></asp:Label>
    <br />
    <br />    
    <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Names="FreesiaUPC" Font-Size="Larger"></asp:Label>
    &nbsp;&nbsp;<br />
        <asp:Label ID="lblEmailAddress" runat="server" Height="20px" Font-Names="FreesiaUPC" Font-Size="Large" Style="position: relative; top: 0px; left: 0px; width: 136px;"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />    
    <asp:Label ID="lblPassword" runat="server" Text="Password:" Font-Names="FreesiaUPC" Font-Size="Larger"></asp:Label>
    <br />
        <asp:Label ID="txtPwd" runat="server" Height="20px" Font-Names="FreesiaUPC" Font-Size="Large" Style="position: relative; top: 0px; left: 0px; width: 136px;"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnConfirm" runat="server" Font-Bold="False" ForeColor="#006600" Font-Names="FreesiaUPC" Text="CONFIRM" Font-Size="Larger" PostBackUrl="~/pgUserDetailsConfirm.aspx" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
   

</asp:Content>

<asp:Content ID="ContentArea2" ContentPlaceHolderID="Tabs" runat="server">
        <br />
        <asp:Label ID="lblPrograms" runat="server" BackColor="#325000" Font-Names="FreesiaUPC" Text="Account Details:" Width="300px" Font-Bold="True" Font-Size="Larger" ForeColor="White" style="margin-left: 10px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblFav" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Favorite Programming Language:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="lblFavLang" runat="server"></asp:Label>
    
        <br />
        <asp:Label ID="lblLeast" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Least Favorite Programming Language:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="lblLeastFav" runat="server"></asp:Label>

    
        <br />
        <asp:Label ID="lblDate" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Date of Last Completed Program:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="lblDateComplete" runat="server"></asp:Label>

        <br />
        <asp:Label ID="lblProgramName" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Name of Last Completed Program:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="lblPName" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblProgramLanguage" runat="server" Font-Names="FreesiaUPC" Font-Size="Large" Text="Language used in Last Completed Program:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblLanguage" runat="server"></asp:Label>

</asp:Content>
