<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpaAyurda.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

        <ItemTemplate>

<style>

     #container-box

     {

       padding:30px;

       float:left;

     }

a {

  transition: 0.3s;

}

.card {

  overflow: hidden;

  box-shadow: 0 3px 17px rgba(0,0,0,0.15), 0 0 5px rgba(0,0,0,0.15);

 

 

}

.img {

    width: 100%;

    height: auto!important;

  }

.add-to-cart {

  display: block;

  width: 60px;

  height: 60px;

  border-radius: 50%;

  text-align: center;

  font-size: 1.3rem;

  line-height: 59px;

  position: absolute;

  right: 1.25rem;

  top: -30px;

  box-shadow: 0 2px 7px rgba(0,0,0,0.4);

 

}

.add-to-cart:hover {

    box-shadow: 0 1px 2px rgba(0,0,0,0.4);

  }

.add-to-cart:hover {

    box-shadow: 0 1px 2px rgba(0,0,0,0.4);

  }

.labels {

         position: absolute;

         top: 0;

         left: 0;

         width: 100%;

         opacity: 0.8;

}

.labels div {

             width: 150px;

             position: absolute;
}

.label-new {

      left: -40px;

      top: 20px;

      transform: rotate(-45deg);

    }

.label-sale {

      right: -40px;

      top: 20px;

      transform: rotate(45deg);

    }

     .btn {

       color:white;

       background-color:#1e4485;

     }

  .price{

    color:#1e4485;

  }

 

 

</style>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

<div class="col-md-4 mb-3 mb-md-0" id="container-box">

      <div class="card h-100">

        <div class="labels">

       

         

          

     </div>

        <img src=/image/<%#Eval("productImage") %> alt="" style="height:200px" "width:200px">

        <div class="card-body position-relative d-flex flex-column" style ="text-align:center">

       
            

         
        

         <h4> <%#Eval("productId") %></h4>

          <h4> <%#Eval("productName") %></h4>
          

          <p>Car Type: <%#Eval("productType") %></p>
          <p>Price : <%#Eval("productPrice") %></p>
          <p>Description : <%#Eval("productDescription") %></p>
            
      

          

         
            
         

          

        </div>

      </div>

    </div>



 

      </ItemTemplate>


        </asp:Repeater>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connectionSpaAyurda %>" SelectCommand="SELECT * FROM [tblProducts]"></asp:SqlDataSource>

</asp:Content>


