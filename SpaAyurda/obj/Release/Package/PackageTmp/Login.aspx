<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpaAyurda.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="thumb p-60">
        <div id="content">
            <div class="row">
                <div class="col-sm-12 col-md-6 col-md-offset-3">
                    <h3 class="title">Login Form</h3>
                        <div class="form-group">
                            <asp:Label class="control-label f-normal" ID="lblLoginUserName" runat="server" Text="Username" />
                            <asp:TextBox class="form-control form-item" ID="txtLoginUserName" runat="server"></asp:TextBox>

                        </div>
                        <div class="form-group m-t-15">
                            <asp:Label class="control-label f-normal" ID="lblLoginPassword" runat="server" Text="Password" />
                            <asp:TextBox class="form-control form-item" ID="txtLoginPassword" OnTextChanged="TextBox2_TextChanged" runat="server"></asp:TextBox>
                        </div>
                        <p><asp:Label class="label-warning" ID="lblMessage" runat="server"><strong></strong></asp:Label>
                    
                    </p>

                       
                     <asp:Button ID="btnLogin" runat="server"   class="btn ht-btn bg-4 m-t-10" OnClick="Button1_Click" Text="Login" />
                     
           
            <a href="Register.aspx"> Register</a> 
        

                </div>
            </div>
        </div>
    </div>

    
    
</asp:Content>
