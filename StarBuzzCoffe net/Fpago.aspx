<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fpago.aspx.cs" Inherits="StarBuzzCoffe_net.Fpago" %>

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
        <div class="intro-heading text-uppercase">Payment</div>
      
      </div>
    </div>
  </header>

  <div class="container">
  <h2 class="section-heading text-uppercase">Select your payment:</h2>
       <br> <br>
<ul>
  <li class="no-puntos">
    &nbsp;<asp:TextBox ID="txtRespuesta" runat="server" Height="87px" Width="270px" ReadOnly="True"></asp:TextBox>
     &nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="lblTotal" runat="server" Text="   Total:"></asp:Label>
      <br> <br>
      <br> <br>
  </li>
    
  <li class ="no-puntos"> 
    &nbsp;<asp:Image ID="Image5" runat="server" ImageUrl="~/img/logos/paypal.jpg" />
      <asp:CheckBox ID="CheckBox1" runat="server" Height="56px" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="" Width="59px" />
      <asp:Image ID="Image2" runat="server" ImageUrl="~/img/logos/santander.jpg" />
      <asp:CheckBox ID="CheckBox5" runat="server" Height="56px" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="" Width="59px" />
      <asp:Image ID="Image6" runat="server" ImageUrl="~/img/logos/BBVA.jpg" />
      <asp:CheckBox ID="CheckBox6" runat="server" Height="56px" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="" Width="59px" />
      <asp:Image ID="Image7" runat="server" ImageUrl="~/img/logos/banamex.jpg" />
      <asp:CheckBox ID="CheckBox7" runat="server" Height="56px" OnCheckedChanged="CheckBox1_CheckedChanged1" Text="" Width="59px" />
      <br> <br>
      <br> <br>  
  </li>
    
  <li class="no-puntos">
      Enter your name&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
      <br> <br>
  </li>
    <li class="no-puntos">
        Card Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input id="Password1"  type="password"/>&nbsp;&nbsp;&nbsp; CVV<a href=""> 
        &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </a>
        <br> <br>
  </li>

  <li class="no-puntos">
      Expiration date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
      <a href=""> 
        <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
        </a>
     <br> <br>
    <br> <br>
  </li>
    
  
</ul>
  </div>

 <asp:Button  class="botonServicios3" ID="btnAcceptOrder" runat="server" Text="Accept Order" OnClick="btnAcceptOrder_Click"/>    
     </form>



</body>

      <!-- Footer -->
  <footer class="footer">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-4">
          <span class="copyright">Copyright &copy; Your Website 2019</span>
        </div>
        <div class="col-md-4">
          <ul class="list-inline social-buttons">
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-facebook-f"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </li>
          </ul>
        </div>
        <div class="col-md-4">
          <ul class="list-inline quicklinks">
            <li class="list-inline-item">
              <a href="#">Privacy Policy</a>
            </li>
            <li class="list-inline-item">
              <a href="#">Terms of Use</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
</html>
