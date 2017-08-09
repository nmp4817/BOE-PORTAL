<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

     <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" 
            style="font-size: xx-large; font-weight: 700; font-style: italic; text-decoration: underline; color: #FF0000" 
            Text="Search"></asp:Label>
&nbsp;&nbsp;<br />
        <asp:Label ID="Label5" runat="server" Text="By Status"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
         </div>
         <div id="container" >
         <div style="overflow-x:auto;overflow-y:auto;width:1000px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="DepartmentNo">
            <Columns>
                <asp:BoundField DataField="DepartmentNo" HeaderText="DepartmentNo" 
                    SortExpression="DepartmentNo" ReadOnly="True" />
                <asp:BoundField DataField="DepartmentName" HeaderText="DepartmentName" 
                    SortExpression="DepartmentName" />
                <asp:BoundField DataField="HODName" HeaderText="HODName" 
                    SortExpression="HODName" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
                <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                    SortExpression="EmailId" />
                <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" 
                    SortExpression="FacultyName" />
                <asp:BoundField DataField="Data_submit" HeaderText="Data_submit" 
                    SortExpression="Data_submit" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:boe %>" 
            
    
             SelectCommand="SELECT [DepartmentNo], [DepartmentName], [HODName], [ContactNo], [EmailId], [FacultyName], [Data_submit] FROM [HOD] WHERE ([Data_submit] = @Data_submit)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Data_submit" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
         <p style="margin-left: 160px">
             <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                 Text="Send Mail" />
&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                 Text="User HomePage" />
         </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;</p>
    </asp:Content>