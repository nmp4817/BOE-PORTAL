<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_show.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<script language="javascript" type="text/javascript">
    function PrintPage() {
        var printContent = document.getElementById('<%= pnlGridView.ClientID %>');
        var printWindow = window.open("All Records", "Print Panel", 'left=50000,top=50000,width=0,height=0');
        printWindow.document.write(printContent.innerHTML);
        printWindow.document.close();
        printWindow.focus();
        printWindow.print();
    }
</script>
   <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" 
            style="font-size: xx-large; font-weight: 700; font-style: italic; text-decoration: underline; color: #FF0000" 
            Text="Show Examination Details"></asp:Label>
    
    </div>
    <p>
        <asp:Label ID="Label2" runat="server" style="font-size: x-large" 
            Text="Department Name"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="DepartmentName" 
            DataValueField="DepartmentName" Height="39px" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="178px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:boe %>" 
            SelectCommand="SELECT [DepartmentName] FROM [HOD]"></asp:SqlDataSource>
        </p>
        <table width="100%" id="pnlGridView" runat="server" align="center" class="ContentTable">
        <tr>
        <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Subject_code" DataSourceID="SqlDataSource2" 
                style="margin-right: 0px">
            <Columns>
                <asp:BoundField DataField="Subject_code" HeaderText="Code" 
                    ReadOnly="True" SortExpression="Subject_code" />
                <asp:BoundField DataField="Subject_name" HeaderText="Name" 
                    SortExpression="Subject_name" />
                <asp:BoundField DataField="Department_name" HeaderText="Department" 
                    SortExpression="Department_name" />
                <asp:BoundField DataField="Stream_year" HeaderText="StreamYear" 
                    SortExpression="Stream_year" />
                <asp:BoundField DataField="Chair_person" HeaderText="ChairPerson" 
                    SortExpression="Chair_person" />
                <asp:BoundField DataField="Paper_setter" HeaderText="PaperSetter" 
                    SortExpression="Paper_setter" />
                <asp:BoundField DataField="Internal_examiner" HeaderText="InternalExaminer" 
                    SortExpression="Internal_examiner" />
                <asp:BoundField DataField="External_examiner" HeaderText="ExternalExaminer" 
                    SortExpression="External_examiner" />
                <asp:BoundField DataField="Viva_examiner" HeaderText="VivaExaminer" 
                    SortExpression="Viva_examiner" />
                <asp:BoundField DataField="Practical_examiner" HeaderText="PracticalExaminer" 
                    SortExpression="Practical_examiner" />
                <asp:BoundField DataField="Exam_date" HeaderText="Exam_date" 
                    SortExpression="Exam_date" />
                <asp:BoundField DataField="Exam_paper_submit" HeaderText="PaperSubmit" 
                    SortExpression="Exam_paper_submit" />
                <asp:BoundField DataField="Answer_sheet_submit" 
                    HeaderText="AnswerSheetSubmit" SortExpression="Answer_sheet_submit" />
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
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:boe %>" 
        SelectCommand="SELECT * FROM [Subject] WHERE ([Department_name] = @Department_name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Department_name" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
    </asp:SqlDataSource>
        </td>
    </tr>
</table>
    <p style="margin-left: 200px">
        
&nbsp;&nbsp;&nbsp;
         <asp:linkbutton id="lnkPrint" runat="server" tooltip="Click to Print All Records"
                text="Print Data" onclick="lnkPrint_Click">Print</asp:linkbutton>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button6" runat="server" Text="Send Mail" 
            onclick="Button6_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
            Text="UserHomePage" />
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>