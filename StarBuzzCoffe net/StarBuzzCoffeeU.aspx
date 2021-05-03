<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StarBuzzCoffeeU.aspx.cs" Inherits="StarBuzzCoffe_net.StarBuzzCoffeeU" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <!--<title><meta name="IvIvans Coffee Shop" /></title>-->

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
      <a class="navbar-brand js-scroll-trigger" href="#page-top">YessIvans Coffee Shop</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        tion">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">Products</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
       
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Welcome To Our Coffee Shop!</div>
        <div class="intro-heading text-uppercase">It's Nice To Meet You</div>
        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
      </div>
    </div>
  </header>

  <!-- Services -->
  <section class="page-section" id="services">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">Order coffe now!</h2>
          <h3>Without any aditional cost</h3>
        </div>
      </div>
             <asp:Label class="DDList" runat="server" Text="Beverage">Beverage</asp:Label>
      <ul >
          <li class="DDList" >
              <asp:DropDownList  ID="DDlistBeverage" runat="server">
                  <asp:ListItem >Espresso</asp:ListItem>
                  <asp:ListItem>DarkRoast</asp:ListItem>
                  <asp:ListItem>Decaf</asp:ListItem>
                  <asp:ListItem>HouseBlend</asp:ListItem>
              </asp:DropDownList>
          </li>
           </ul>
         <asp:Label class="DDList"  runat="server" Text="Condiment"></asp:Label>
        <ul>
        
          <li class="DDList">
              <asp:DropDownList ID="DDlistC1" runat="server">
                  <asp:ListItem>nada</asp:ListItem>
                  <asp:ListItem>whip</asp:ListItem>
                  <asp:ListItem>mocha</asp:ListItem>
                  <asp:ListItem>soy</asp:ListItem>
                  <asp:ListItem>milk</asp:ListItem>
              </asp:DropDownList>
              <asp:DropDownList ID="DDlistC2" runat="server">
                  <asp:ListItem>nada</asp:ListItem>
                  <asp:ListItem>whip</asp:ListItem>
                  <asp:ListItem>mocha</asp:ListItem>
                  <asp:ListItem>soy</asp:ListItem>
                  <asp:ListItem>milk</asp:ListItem>
              </asp:DropDownList>
              <asp:DropDownList ID="DDlistC3" runat="server">
                  <asp:ListItem>nada</asp:ListItem>
                  <asp:ListItem>whip</asp:ListItem>
                  <asp:ListItem>mocha</asp:ListItem>
                  <asp:ListItem>soy</asp:ListItem>
                  <asp:ListItem>milk</asp:ListItem>
              </asp:DropDownList>
              <asp:DropDownList ID="DDlistC4" runat="server">
                  <asp:ListItem>nada</asp:ListItem>
                  <asp:ListItem>whip</asp:ListItem>
                  <asp:ListItem>mocha</asp:ListItem>
                  <asp:ListItem>soy</asp:ListItem>
                  <asp:ListItem>milk</asp:ListItem>
              </asp:DropDownList>
          </li>
       </ul>
       <ul>
           
           <li class="DDList">
           <asp:TextBox ID="txtResultado" name="txtResultado" TextMode="MultiLine" ReadOnly="true" runat="server" Height="143px" Width="422px"></asp:TextBox>
          
               <asp:Button class="botonServicios" ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
             
          <!-- Aqui falta guardar lo que se encuentra en la caja de texto y redirigir la pagina con el texto -->     
<asp:Button class="botonServicios" ID="btnAcceptOrder" runat="server" Text="Accept Order" OnClick="btnAcceptOrder_Click" PostBackUrl="~/Fpago.aspx" /> 
            
               <asp:Label ID="lblTotal" runat="server" Text="   Total:"></asp:Label>
           </li>
           <li class="DDList">
        <asp:Button class="botonServicios2" ID="btnBorrar" runat="server" Text="Delete order" OnClick="btnBorrar_Click" />
           </li>

       </ul>
       


    </div>
  </section>

  <!-- Portfolio Grid -->
  <section class="bg-light page-section" id="portfolio">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">The best from our selection</h2>
          <h3 class="section-subheading text-muted">Home made.</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/espresso.jpg" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>Espresso</h4>
            <p class="text-muted">$3.50</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/latte.jpg" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>Latte</h4>
            <p class="text-muted">$3.99</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/macchiato.jpg" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>Macchiato</h4>
            <p class="text-muted">$4.50</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/freddo.jpg" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>Freddo</h4>
            <p class="text-muted">$3.99</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/machiato.jpg" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>Mocachino</h4>
            <p class="text-muted">$5.99</p>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
            <div class="portfolio-hover">
              <div class="portfolio-hover-content">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/portfolio/Irish.jpg" alt="">
          </a>
          <div class="portfolio-caption">
            <h4>Irish</h4>
            <p class="text-muted">$4.00</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- About -->
  <section class="page-section" id="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h2 class="section-heading text-uppercase">About</h2>
          <h3 class="section-subheading text-muted">From our best selection to your hands</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <ul class="timeline">
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="img/about/cafeteria-frente.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>2009-2011</h4>
                  <h4 class="subheading">First steps</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Every day, we go to work hoping to achieve two things: share the best coffee with our friends and help make the world a little better. That's how it was when the first YessIvans Coffee Shop  opened in 2009, and that's how it is today.</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="img/about/cafeteria-dentro.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>March 2011</h4>
                  <h4 class="subheading">Grow Up</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">From the beginning, YessIvansCoffeeShop set out to be a different company. A company where not only coffee and its rich tradition were honored, but where a sense of connection was also created, so we opened more stores</p>
                </div>
              </div>
            </li>
            <li>
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="img/about/cafe.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>December 2012</h4>
                  <h4 class="subheading">Transition to Full Service</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Our mission: inspire and nurture the human spirit. One person, one cup of coffee and one community at a time.</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <img class="rounded-circle img-fluid" src="img/about/cafe-dentro2.jpg" alt="">
              </div>
              <div class="timeline-panel">
                <div class="timeline-heading">
                  <h4>June 2020</h4>
                  <h4 class="subheading">Today</h4>
                </div>
                <div class="timeline-body">
                  <p class="text-muted">Today, with more than 200 stores in 10 countries, YessIvansCoffeeShop is the world's leading coffee specialty roaster and retailer. And with each cup we try to make both our heritage and an exceptional experience come true</p>
                </div>
              </div>
            </li>
            <li class="timeline-inverted">
              <div class="timeline-image">
                <h4>Be Part
                  <br>Of Our
                  <br>Story!</h4>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>



  <!-- Clients -->
  <section class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/santander.jpg" alt="">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/BBVA.jpg" alt="">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/banamex.jpg" alt="">
          </a>
        </div>
        <div class="col-md-3 col-sm-6">
          <a href="#">
            <img class="img-fluid d-block mx-auto" src="img/logos/paypal.jpg" alt="">
          </a>
        </div>
      </div>
    </div>
  </section>


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

  <!-- Portfolio Modals -->

  <!-- Modal 1 -->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">Espresso</h2>
                <p class="item-intro text-muted">"There is nothing like a cup of coffee to stimulate brain cells"<br>- Sherlock Holmes</p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/full-expresso.jpg" alt="">
                <p>Very finely ground coffee, through which a limited amount of water passes whose temperature is close to the boiling point. It is a type of coffee originating in Italy and which owes its name to the coffee maker with which it is prepared (espresso machine).</p>
                <ul class="list-inline">
                  <li>Date: January 2020</li>
                  <li>Order Now</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 2 -->
  <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">Latte</h2>
                <p class="item-intro text-muted">Without my morning coffee, I'm just like a dry, golden piece of ram<br>- Johann Sebastian Bach</p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/full-latte.jpg" alt="">
                <p>It is a drink prepared with milk and espresso coffee. The name refers to the preparation method, where the milk is stained with the added coffee.</p>
                <ul class="list-inline">
                  <li>Date: January 2020</li>
                  <li>Order Now</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 3 -->
  <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">Macchiato</h2>
                <p class="item-intro text-muted">I orchestrate my mornings to the sound of coffee<br>- Harry mahtar</p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/full-macchiato.jpg" alt="">
                <p>The drink layered, with the liquid milk at the bottom, the espresso in the middle, and the foam floating above. Macchiato went on to refer to the foam of the touch of milk that was put on top to indicate that the drink had a bit of milk over a lot of coffee.</p>
                <ul class="list-inline">
                  <li>Date: January 2020</li>
                  <li>Order Now</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 4 -->
  <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">Freddo</h2>
                <p class="item-intro text-muted">Coffee is a balm for the heart and spirit.<br>- Giuseppe Verdi</p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/full-freddo.jpg" alt="">
                <p>Freddo's recipe offers a full-bodied, high-intensity drink in a long glass format, featuring delicious freshly brewed espresso shots and a couple of ice cubes</p>
                <ul class="list-inline">
                  <li>Date: January 2020</li>
                  <li>Order Now</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 5 -->
  <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">Mocachino</h2>
                <p class="item-intro text-muted">It is easier to change religion than coffee.<br>- Georges Courteline</p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/full-machiato.jpg" alt="">
                <p>A mocha coffee is a variant of coffee with milk. It usually has a third of espresso and two thirds of steamed milk, but a part of chocolate is added. Mocha contains dark or milk chocolate. It has the famous milk foam on top.</p>
                <ul class="list-inline">
                  <li>Date: January 2020</li>
                  <li>Order Now</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Modal 6 -->
  <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
          <div class="lr">
            <div class="rl"></div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <div class="modal-body">
                <!-- Project Details Go Here -->
                <h2 class="text-uppercase">Irish</h2>
                <p class="item-intro text-muted">I think if I had been a woman, I would use coffee as perfume.<br>- John Van Druten</p>
                <img class="img-fluid d-block mx-auto" src="img/portfolio/full-irish.jpg" alt="">
                <p>It is a cocktail that consists of the mixture of Irish whiskey, three cubes of sugar, coffee and covered by two centimeters of cream. It is delicious on the palate</p>
                <ul class="list-inline">
                  <li>Date: January 2020</li>
                  <li>Order Now</li>
                </ul>
                <button class="btn btn-primary" data-dismiss="modal" type="button">
                  <i class="fas fa-times"></i>
                  Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/agency.min.js"></script>

    </form>

</body>

</html>

