<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p style="margin-left: 200px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="font-size: xx-large; font-style: italic; text-decoration: underline; font-weight: 700; color: #FF0000" 
            Text="Welcome Admin"></asp:Label>
    </p>
    <p style="margin-left: 200px">
        &nbsp;</p>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="HOD_details.aspx" runat="server" 
        style="font-size: x-large; font-weight: 700; font-style: italic; color: #3333FF">Show HOD Status</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" NavigateUrl="Admin_modify.aspx" runat="server"
        style="font-size: x-large; font-weight: 700; font-style: italic; text-decoration: underline; color: #3333FF" >Modify Details</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="Admin_show.aspx" 
        style="font-weight: 700; font-style: italic; text-decoration: underline; font-size: x-large; color: #3333FF">Examination Details</asp:HyperLink>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="X-Large" 
        NavigateUrl="~/Search.aspx">Search HOD By Status</asp:HyperLink>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="font-size: x-large; font-weight: 700" Text="Logout" />
        <br />
    <br />
    <br />
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
        style="font-size: large" Text="Change Password" />
    <br />
    <br />
    <br />
    <table style="width: 76%;">
        <tr>
            <td class="style8" height="20">
                <asp:Label ID="Label2" runat="server" style="font-size: medium" 
                    Text="New Password" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" 
                    TextMode="Password" Visible="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" height="20">
                <asp:Label ID="Label3" runat="server" style="font-size: medium" 
                    Text="Re-enter New Password" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Visible="False" 
                    Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                    ErrorMessage="Re-entered Password should be same as Password"></asp:CompareValidator>
            </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        style="text-align: center; font-size: medium" Text="Change" Visible="False" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        style="text-align: center; font-size: medium" Text="Cancel" Visible="False" />
    </asp:Content>