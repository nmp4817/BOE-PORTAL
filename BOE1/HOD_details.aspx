<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOD_details.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

     <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" 
            style="font-size: xx-large; font-weight: 700; font-style: italic; text-decoration: underline; color: #FF0000" 
            Text="HOD DETAILS"></asp:Label>
&nbsp;&nbsp;</div>
         <p>
        &nbsp;
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:boe %>" 
            
    SelectCommand="SELECT [DepartmentNo], [DepartmentName], [HODName], [ContactNo], [EmailId], [FacultyName], [Data_submit] FROM [HOD] WHERE ([UserName] &lt;&gt; @UserName)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="Admin" Name="UserName" SessionField="User" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
         <p>
         </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="UserHomePage" />
        &nbsp;</p>
    </asp:Content>