<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Default3" MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
        <span class="style5"><strong><em><span class="style4">SUBJECT&nbsp; INFORMATION&nbsp; FORM</span> </em>
    </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div style="margin-left: 520px" > 
    </div>
    &nbsp;<table style="width:99%; height: 368px;">
        <tr>
            <td class="style10">
                Subject Code*</td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="182px" CssClass="style6" 
                    style="margin-bottom: 0px" Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Subject Name*</td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server" Width="182px" CssClass="style6" 
                    Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Department Name*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td class="style12">
                <asp:TextBox ID="TextBox3" runat="server" Width="182px" CssClass="style6" 
                    Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Stream Year*</td>
            <td class="style12">
                <asp:TextBox ID="TextBox4" runat="server" Width="182px" CssClass="style6" 
                    Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Chair Person*</td>
            <td class="style12">
                <asp:TextBox ID="TextBox5" runat="server" Width="182px" CssClass="style6" 
                    Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Paper Setter</td>
            <td class="style12">
                <asp:TextBox ID="TextBox6" runat="server" Width="182px" CssClass="style6" 
                    Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Internal Examiner</td>
            <td class="style12">
                <asp:TextBox ID="TextBox7" runat="server" Width="182px" CssClass="style6" 
                    Height="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                External Examiner</td>
            <td class="style12">
                <asp:TextBox ID="TextBox8" runat="server" Height="22px"
                    Width="182px" CssClass="style6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Viva Examiner</td>
            <td class="style12">
                <asp:TextBox ID="TextBox9" runat="server" Height="22px" Width="182px" 
                    CssClass="style6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Practical Examiner</td>
            <td class="style12">
                <asp:TextBox ID="TextBox10" runat="server" Height="22px" Width="182px" 
                    style="font-size: large"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Exam Date*</td>
            <td class="style12">
                <asp:TextBox ID="TextBox11" runat="server" Height="22px" Width="182px" 
                    Enabled="False" style="font-size: large" 
                    ></asp:TextBox>
                &nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                    ImageUrl="~/cal1.jpg" onclick="ImageButton1_Click" Width="29px" />
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style12">
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" Visible="False" 
                    Width="200px" ></asp:Calendar>
            </td>
        </tr>
    </table>
    <p class="style6">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Width="103px" CssClass="style6" />
    </p>
    <p class="style5" style="width: 269px; margin-left: 200px">
        <strong><em>OR TO UPLOAD (.XLSX) FILE:</em></strong></p>
    <div style="width: 542px; height: 25px; margin-left: 200px">
        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="style6" />
        <span class="style6">&nbsp;</span><asp:Button ID="Button2" runat="server" Text="Upload" Width="89px" 
            onclick="Button2_Click" CssClass="style6" />
    </div>
    <p class="style4" style="width: 395px; margin-left: 200px">
        <em><strong><span class="style6">TO DOWNLOAD FORMAT :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink 
            ID="HyperLink1" runat="server" NavigateUrl="~/Format.xlsx" CssClass="style6">Download</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></strong></em></p>
    <p class="style4" style="width: 395px; margin-left: 200px">
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            style="font-size: large" Text="UserHomePage"  />
        <em><strong><span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </span>
        </strong>
        </em>
    </p>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style1
    {
            color: red;
            width: 159px;
        }
        .style4
        {
            color: red;
            font-size: large;
        }
        .style5
        {
            color: red;
            font-size: medium;
        }
        .style6
        {
            width: 343px;
        }
        .style10
        {
            color: red;
            width: 1px;
        }
        .style12
        {
            width: 3px;
        }
        .style13
        {
            width: 1px;
        }
    </style>
</asp:Content>
