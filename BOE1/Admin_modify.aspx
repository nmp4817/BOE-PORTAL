<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_modify.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
        <p style="font-size: xx-large">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" 
            style="font-size: xx-large; color: #FF0000; font-weight: 700; font-style: italic; text-decoration: underline" 
            Text="Modify Examination Details"></asp:Label>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="Label3" runat="server" 
            style="color: #FF0000; font-weight: 700; font-style: italic; font-size: large" 
            Text="Department Name :"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="DepartmentName" 
            DataValueField="DepartmentName" Height="35px" 
            style="font-size: large; font-weight: 700" Width="250px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:boe %>"  
            SelectCommand="SELECT [DepartmentName] FROM [HOD]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Display" />
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
        <div id="container" >
        <div style="overflow-x:auto;overflow-y:auto;width:1200px;height:200px">
        <asp:GridView 
            ID="GridView1"  runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Subject_code" DataSourceID="SqlDataSource1" Visible="False" 
                BorderColor="Black" ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="Subject_code" HeaderText="Subject_code" 
                    ReadOnly="True" SortExpression="Subject_code" />
                <asp:BoundField DataField="Subject_name" HeaderText="Subject_name" 
                    SortExpression="Subject_name" />
                <asp:BoundField DataField="Department_name" HeaderText="Department_name" 
                    SortExpression="Department_name" />
                <asp:BoundField DataField="Stream_year" HeaderText="Stream_year" 
                    SortExpression="Stream_year" />
                <asp:BoundField DataField="Chair_person" HeaderText="Chair_person" 
                    SortExpression="Chair_person" />
                <asp:BoundField DataField="Paper_setter" HeaderText="Paper_setter" 
                    SortExpression="Paper_setter" />
                <asp:BoundField DataField="Internal_examiner" HeaderText="Internal_examiner" 
                    SortExpression="Internal_examiner" />
                <asp:BoundField DataField="External_examiner" HeaderText="External_examiner" 
                    SortExpression="External_examiner" />
                <asp:BoundField DataField="Viva_examiner" HeaderText="Viva_examiner" 
                    SortExpression="Viva_examiner" />
                <asp:BoundField DataField="Practical_examiner" HeaderText="Practical_examiner" 
                    SortExpression="Practical_examiner" />
                <asp:BoundField DataField="Exam_date" HeaderText="Exam_date" 
                    SortExpression="Exam_date" />
                <asp:TemplateField HeaderText="Exam_paper_submit">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Selected="True">NotSubmitted</asp:ListItem>
                            <asp:ListItem>Submitted</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Answer_sheet_submit">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Selected="True">NotSubmitted</asp:ListItem>
                            <asp:ListItem>Submitted</asp:ListItem>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
        </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:boe %>" 
            SelectCommand="SELECT [Subject_code], [Subject_name], [Department_name], [Stream_year], [Chair_person], [Paper_setter], [Internal_examiner], [External_examiner], [Viva_examiner], [Practical_examiner], [Exam_date] FROM [Subject] WHERE ([Department_name] = @Department_name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Department_name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
            Text="UserHomePage" />
    </p>
    </asp:Content>
