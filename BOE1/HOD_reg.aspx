<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOD_reg.aspx.cs" Inherits="Default2" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <p class="style2">
            <em><strong>&nbsp;&nbsp;&nbsp; <span class="style3">Registration Form</span></strong></em></p>
    
    <br />
    <table style="width:100%;">
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                Department Number</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                Department Name</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                HOD Name</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                Conatct Number</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox4" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="Invalid Form of Contact Number" 
                    ValidationExpression="\d{10}" ControlToValidate="TextBox4" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                EmailID</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox5" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Invalid Form of EmailID" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                Faculty Name</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox9" runat="server"  
                    Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                Address</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox6" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                UserName</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox7" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                Password</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox8" runat="server" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" bgcolor="#CCCCCC">
                Re-enter Password</td>
            <td class="style2">
                :</td>
            <td class="style5">
                <asp:TextBox ID="TextBox10" runat="server" Height="22px" Width="268px"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox8" ControlToValidate="TextBox10" 
                    ErrorMessage="Re-entered Password should be same as Password" 
                    ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p style="margin-left: 120px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="margin-left: 0px" Text="Register" Width="77px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" Width="92px" 
            onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 </p>
 </asp:Content>
    
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style1
        {
            color: red;
        }
        .style2
        {
            color: red;
            font-size: x-large;
        }
        .style3
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>

    
