<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOD.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p style="margin-left: 200px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Welcome" 
            
            
            style="font-size: xx-large; font-weight: 700; font-style: italic; text-decoration: underline;" 
            ForeColor="#0000CC"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label" 
            style="font-size: xx-large; color: #FF3300; font-weight: 700; font-style: italic; text-decoration: underline"></asp:Label>
        </p>
    <p>
        &nbsp;
        <asp:HyperLink ID="HyperLink1" NavigateUrl="Sub_show.aspx" runat="server" 
            style="font-size: x-large; font-weight: 700; font-style: italic;">Show Details</asp:HyperLink>
        &nbsp;</p>
    <p>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" NavigateUrl="Insert.aspx" runat="server" 
            style="font-size: x-large; font-weight: 700; font-style: italic;">Insert Data</asp:HyperLink>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p style="margin-left: 160px">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="font-size: x-large; font-weight: 700" Text="Logout" />
    </p>
    <p style="margin-left: 160px">
        &nbsp;</p>
    <br />
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
        style="font-size: large" Text="Change Password" />
    <br />
    <br />
    <br />
    <table style="width: 76%;">
        <tr>
            <td class="style8" height="20">
                <asp:Label ID="Label4" runat="server" Text="New Password" Visible="False" 
                    style="font-size: medium; font-weight: 700; color: #FF0000"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" EnableViewState="False" 
                    TextMode="Password" Visible="False" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8" height="20">
                <asp:Label ID="Label3" runat="server" style="font-size: medium; font-weight: 700; color: #FF0000;" 
                    Text="Re-enter New Password" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Visible="False" 
                    Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                    ErrorMessage="Re-entered Password should be same as Password" 
                    style="color: #FF0000"></asp:CompareValidator>
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