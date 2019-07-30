<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SpaAyurda.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="thumb p-60">
        <div id="content">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-md-offset-3">
                    <h3 class="title">Registeration Form </h3>
                     <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblFirstName" runat="server" Text="FirstName" />
                            <asp:TextBox class="form-control form-item" ID="txtFirstName" runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblLastName" runat="server" Text="LastName" />
                            <asp:TextBox class="form-control form-item" ID="txtLastName" runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblPhoneNumber" runat="server" Text="PhoneNumber" />
                            <asp:TextBox class="form-control form-item" ID="txtPhoneNumber" runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblAddress" runat="server" Text="Address" />
                            <asp:TextBox class="form-control form-item" ID="txtAddress" runat="server"></asp:TextBox>
                    </div>

                      <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblEmail" runat="server" Text="Email" />
                            <asp:TextBox class="form-control form-item" ID="txtEmail" runat="server"></asp:TextBox>
                    </div>

                    
                      <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblUserName" runat="server" Text="UserName" />
                            <asp:TextBox class="form-control form-item" ID="txtUserName" runat="server"></asp:TextBox>
                    </div>

                     <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblPassword" runat="server" Text="Password" />
                            <asp:TextBox class="form-control form-item" ID="txtPassword" runat="server"></asp:TextBox>
                    </div>
                    
                       
                     <asp:Button ID="Button1" runat="server"   class="btn ht-btn bg-4 m-t-10" OnClick="Button1_Click" Text="Register" />
                    


                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
