<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/WEB460Project.master" CodeFile="UserAccountDetails.aspx.cs" Inherits="UserAccountDetails" %>

<%@ PreviousPageType VirtualPath="~/UserAccountDetailsConfirm.aspx" %>
<%@ MasterType VirtualPath="~/WEB460Project.master" %>


<asp:Content id="UserDetails" contentplaceholderid="Tabs" runat="server">
    <asp:Panel ID="AccountDetails" runat="server" BackColor="lightsteelblue" Height="800px" Width="1000px" style="margin-left: 0px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblName" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Name: " Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsersName" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Height="30px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblAddress" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Address: " Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLocation" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" height="30px" width="108px"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUser" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Username:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblUsername" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#669999" height="30px" width="108px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPass" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Password: " Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblPassword" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#669999" height="30px" width="108px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFavorite" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Favorite Programming Language:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblFavLanguage" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" Height="30px"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLeast" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Least Favorite Programming Language:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblLeastFavLang" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" height="30px" width="125px"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblDate" runat="server" Font-Bold="False" Font-Names="FreesiaUPC" Text="Date Last Completed Project:" Font-Size="X-Large"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblDateComplete" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="FreesiaUPC" Font-Size="Larger" ForeColor="#CC0000" height="25px" width="125px"></asp:Label>
        <br /> &nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblStats" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="XX-Large" Font-Underline="True" ForeColor="#003366" Text="Personal Stats:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <!-- WANT TO HAVE SINGLE USER INFORMATION HERE -->
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="gvStats" runat="server" CellPadding="4" DataSourceID="XmlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/personalReports.xml"></asp:XmlDataSource>
&nbsp;<!-- WANT TO HAVE XML TO EXPORT HERE --></asp:Panel>

</asp:Content>


<asp:Content id="UserDash" contentplaceholderid="Dashboard" runat="server">
    <asp:Panel ID="AccountDash" runat="server" BackColor="lightsteelblue" Height="800px" Width="175px" Direction="LeftToRight" HorizontalAlign="Left">
        <img style="padding: 50px 0 0 15px; height: 150px; width: 150px;" src="Images/monkey.png" />

        
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnExport" runat="server" Font-Bold="True" Font-Names="FreesiaUPC" Font-Size="XX-Large" ForeColor="#276C13" Text="Export" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        
    </asp:Panel>

</asp:Content>