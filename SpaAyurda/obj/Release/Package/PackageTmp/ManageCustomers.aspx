<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManageCustomers.aspx.cs" Inherits="SpaAyurda.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="nav-justified">
        <tr>
            <td colspan="3"><b>Add Customer Details</b></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">FirstName</td>
            <td style="width: 398px">
                <asp:TextBox ID="txtCustomerFirstName" runat="server" Width="275px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCustomerFirstName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">LastName</td>
            <td style="width: 398px">
                <asp:TextBox ID="txtCustomerLastName" runat="server" Width="275px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCustomerLastName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">Address</td>
            <td style="width: 398px">
                <asp:TextBox ID="txtCustomerAddress" runat="server" Width="275px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCustomerAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px; height: 24px">Email</td>
            <td style="width: 398px; height: 24px">
                <asp:TextBox ID="txtCustomerEmail" runat="server" Width="275px"></asp:TextBox>
            </td>
            <td style="height: 24px">
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCustomerEmail" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                
            </td>
            <td style="height: 24px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px; height: 24px">UserName</td>
            <td style="width: 398px; height: 24px">
                <asp:TextBox ID="txtCustomerUserName" runat="server" Width="275px"></asp:TextBox>
            </td>
            <td style="height: 24px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCustomerUserName" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 24px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 215px">Password</td>
            <td style="width: 398px">
                <asp:TextBox ID="txtCustomerPassword" runat="server" Width="275px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCustomerPassword" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnRegisterCustomer" runat="server" Text="Register" />

                </br>
                <h3>Add,Edit,Delete Customer Details</h3>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="userId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="userId" HeaderText="userId" InsertVisible="False" ReadOnly="True" SortExpression="userId" />
                        <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                        <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                        <asp:BoundField DataField="phoneNumber" HeaderText="phoneNumber" SortExpression="phoneNumber" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="emailId" HeaderText="emailId" SortExpression="emailId" />
                        <asp:BoundField DataField="userName" HeaderText="userName" SortExpression="userName" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>



                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionSpaAyurda %>" DeleteCommand="DELETE FROM [tbl_Users] WHERE [userId] = @original_userId" InsertCommand="INSERT INTO [tbl_Users] ([firstName], [lastName], [phoneNumber], [address], [emailId], [userName], [password]) VALUES (@firstName, @lastName, @phoneNumber, @address, @emailId, @userName, @password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_Users]" UpdateCommand="UPDATE [tbl_Users] SET [firstName] = @firstName, [lastName] = @lastName, [phoneNumber] = @phoneNumber, [address] = @address, [emailId] = @emailId, [userName] = @userName, [password] = @password WHERE [userId] = @original_userId">
                    <DeleteParameters>
                        <asp:Parameter Name="original_userId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="firstName" Type="String" />
                        <asp:Parameter Name="lastName" Type="String" />
                        <asp:Parameter Name="phoneNumber" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="emailId" Type="String" />
                        <asp:Parameter Name="userName" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="firstName" Type="String" />
                        <asp:Parameter Name="lastName" Type="String" />
                        <asp:Parameter Name="phoneNumber" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="emailId" Type="String" />
                        <asp:Parameter Name="userName" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="original_userId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
