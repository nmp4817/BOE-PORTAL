<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" 
            style="font-size: large; font-weight: 700; font-style: italic; color: #FF0000" 
            Text="Name:   Jaiswal Hiren"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" 
            style="font-size: large; font-weight: 700; font-style: italic; color: #FF0000" 
            Text="Contact No:   8888888888"></asp:Label>
&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" ForeColor="Red" 
            style="font-size: large; font-weight: 700" 
            Text="Email-id : hirenvjaiswal@gmail.com"></asp:Label>
    </p>
<p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;<asp:Button ID="Button5" runat="server" Text="Send Email" />
    </p>

</asp:Content>

