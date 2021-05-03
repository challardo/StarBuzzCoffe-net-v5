<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StarBuzzCoffeeS.aspx.cs" Inherits="StarBuzzCoffe_net.StarBuzzCoffeeS" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
      <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom fonts for this template -->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

<!-- Custom styles for this template -->
<link href="css/agency.min.css" rel="stylesheet">

</head>


    <body id="page-top">
     <form id="form1" runat="server">
     <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">YessIvans Coffee shop</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
       
         Menu
        <i class="fas fa-bars"></i>
      </button>
    </div>
  </nav>

  <header class="masthead" id="hformaspago">
    <div class="container">
      <div class="intro-text">
        <div class="intro-heading text-uppercase">Server</div>
      
      </div>
    </div>
  </header>

  <div class="container">
      <br><br>
  <h2 class="section-heading text-uppercase">do a search :&nbsp;&nbsp;
    <asp:TextBox ID="txtBuscar" runat="server" Width="200px" OnTextChanged="txtBuscar_TextChanged"></asp:TextBox>
      </h2>
       <br> <br>
<ul>
  <li class="no-puntos">




       <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" Height="150px" OnRowCommand="GridView1_RowCommand" Width="1000px" Font-Names="Century Gothic" Font-Overline="False" DataSourceID="FacturaCafe2">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                    <asp:ButtonField ButtonType="Button" CommandName="Cancel" HeaderText="PDF Facturas" ShowHeader="True" Text="Ver Factura" ControlStyle-CssClass="botonServicios2" />
                </Columns>

          <headerstyle backcolor="black" forecolor="white" Font-Size="20px"/>
            </asp:GridView>
      <br><br>
      <br><br>
      <br><br>

            <asp:SqlDataSource ID="FacturaCafe2" runat="server" ConnectionString="<%$ ConnectionStrings:OrigenDatosBDFactura_aspnet %>" SelectCommand="SELECT * FROM [Factura]"></asp:SqlDataSource>
            <!----<asp:SqlDataSource ID="FacturasUDataSource" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\FacturasU.mdf;Integrated Security=True;Connect Timeout=30" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Factura]"></asp:SqlDataSource>
               -->
  </li>

</ul>
  </div>    
     </form>

</body>
</html>
