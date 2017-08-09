<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sub_show.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">    
            <div id="container">
            <div style="overflow-x:auto;overflow-y:auto;width:1000px;height:200px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Subject_code" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:boe %>" 
                    DeleteCommand="DELETE FROM [Subject] WHERE [Subject_code] = @Subject_code" 
                    InsertCommand="INSERT INTO [Subject] ([Subject_code], [Subject_name], [Department_name], [Stream_year], [Chair_person], [Paper_setter], [Internal_examiner], [External_examiner], [Viva_examiner], [Practical_examiner], [Exam_date]) VALUES (@Subject_code, @Subject_name, @Department_name, @Stream_year, @Chair_person, @Paper_setter, @Internal_examiner, @External_examiner, @Viva_examiner, @Practical_examiner, @Exam_date)" 
                    SelectCommand="SELECT [Subject_code], [Subject_name], [Department_name], [Stream_year], [Chair_person], [Paper_setter], [Internal_examiner], [External_examiner], [Viva_examiner], [Practical_examiner], [Exam_date] FROM [Subject] WHERE ([Department_name] = @Department_name)" 
                    UpdateCommand="UPDATE [Subject] SET [Subject_name] = @Subject_name, [Department_name] = @Department_name, [Stream_year] = @Stream_year, [Chair_person] = @Chair_person, [Paper_setter] = @Paper_setter, [Internal_examiner] = @Internal_examiner, [External_examiner] = @External_examiner, [Viva_examiner] = @Viva_examiner, [Practical_examiner] = @Practical_examiner, [Exam_date] = @Exam_date WHERE [Subject_code] = @Subject_code">
                    <DeleteParameters>
                        <asp:Parameter Name="Subject_code" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Subject_code" Type="String" />
                        <asp:Parameter Name="Subject_name" Type="String" />
                        <asp:Parameter Name="Department_name" Type="String" />
                        <asp:Parameter Name="Stream_year" Type="String" />
                        <asp:Parameter Name="Chair_person" Type="String" />
                        <asp:Parameter Name="Paper_setter" Type="String" />
                        <asp:Parameter Name="Internal_examiner" Type="String" />
                        <asp:Parameter Name="External_examiner" Type="String" />
                        <asp:Parameter Name="Viva_examiner" Type="String" />
                        <asp:Parameter Name="Practical_examiner" Type="String" />
                        <asp:Parameter DbType="Date" Name="Exam_date" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="Department_name" SessionField="User" 
                            Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Subject_name" Type="String" />
                        <asp:Parameter Name="Department_name" Type="String" />
                        <asp:Parameter Name="Stream_year" Type="String" />
                        <asp:Parameter Name="Chair_person" Type="String" />
                        <asp:Parameter Name="Paper_setter" Type="String" />
                        <asp:Parameter Name="Internal_examiner" Type="String" />
                        <asp:Parameter Name="External_examiner" Type="String" />
                        <asp:Parameter Name="Viva_examiner" Type="String" />
                        <asp:Parameter Name="Practical_examiner" Type="String" />
                        <asp:Parameter DbType="Date" Name="Exam_date" />
                        <asp:Parameter Name="Subject_code" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
        </div>
        </div>
        <div>
        <script type="text/javascript">
            function newHeight() {
                defaultHeight = 400;
                allElementsHeight = document.body.clientHeight;
                visibleHeight = jQuery(window).height();
                containerHeight = jQuery("#container").height();
                restOfElementsHeight = allElementsHeight - containerHeight;
                if ((containerHeight + allElementsHeight) <= visibleHeight) {
                    newContainerHeight = containerHeight;
                }
                else if (restOfElementsHeight > visibleHeight) {
                    if (containerHeight < defaultHeight) {
                        newContainerHeight = containerHeight;
                    }
                    else {
                        newContainerHeight = defaultHeight;
                    }

                }
                else {
                    newContainerHeight = visibleHeight - restOfElementsHeight;
                }
                return newContainerHeight + 'px';
            }
            jQuery(document).ready(function () { if ($("#container").length) { setNewGridHeight(); } });


            jQuery(window).resize(function () { setNewGridHeight(); });
            function setNewGridHeight() {
                if (jQuery("#container").length) {
                    document.getElementById("container").style.height = newHeight();
                }
            }
    
    
    </script>
            <br />
    
    </div>
    <p style="margin-left: 360px">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <p style="margin-left: 280px">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Submit to Admin" EnableTheming="True" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Lock" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="UserHomePage" />
    </p>
   </asp:Content>