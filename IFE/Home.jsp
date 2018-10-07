<html>
<head>
    <title>Home page</title>
    <link rel="icon" href="IMAGES/srasys.png">
    <script src="JS/jquery-1.11.3.min.js"></script>
    <link rel=stylesheet href="CSS/animate.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>
<style>
.sidenav {
    height: 100%;
    width: 200px;
    position: fixed;
    z-index: 1;
    top: 52;
    left: 0;
    background-color: blueviolet;
    overflow-x: hidden;
    padding-top: 35px;
}

.sidenav a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    display: block;
}

.sidenav a:hover {
    color: #111;
}

.main {
    margin-left: 300px; /* Same as the width of the sidenav */
    font-size: 25px; /* Increased text to enable scrolling */
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}
    
.affix {
      top: 0;
      width: 100%;
      z-index: 9999 !important;
  }

  .affix + .container-fluid {
      padding-top: 50px;
  }
    .social_images{
    height: 230px;
    width: 230px;
    border-radius: 160pt;        
}
    </style>
<body>    
     <script src="JS/wow.js"></script>
              <script>
              new WOW().init();
             </script>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="50">
  <div class="container-fluid">
    <form class="navbar-form">
      <div class="form-group col-sm-10">
        <input type="text" class="form-control" placeholder="Search" name="search" style="width: 100%">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    <a href="logout.jsp" style="margin-left: 40pt;color: white;font-size: 15pt">Logout</a>
    </form>
  </div>
</nav>
 <div class="sidenav">
  <a href="Assignments.jsp">Assginments</a>
  <a href="Lesson.jsp">Lesson Planner</a>
</div>    
<div class="main container-fluid">
    <div class="row">
        <div class="wow slideInLeft col-sm-4" align=center>
        <img class="social_images" src="IMAGES/four.jpg"><br>
         
        </div>
        <div class="wow zoomIn col-sm-4" align=center>
        <img class="social_images" src="IMAGES/five.jpg"><br>
        
         </div>
        <div class="wow slideInRight col-sm-4" align=center>
        <img class="social_images" src="IMAGES/six.jpg">
       
         </div>
    </div> <br>  
<div class="row">
        <div class="wow slideInDown col-sm-4" align=center>
        <img class="social_images" src="IMAGES/11.jpg"><br>
        
        </div>
        <div class="wow slideInUp col-sm-4" align=center>
        <img class="social_images" src="IMAGES/nine.jpeg"><br>
       
        </div>
        <div class="wow slideInDown col-sm-4" align=center>
        <img class="social_images" src="IMAGES/one.jpg">
        
        </div>
    </div>   
</div>
    
    <div>
        <p id="myBtn">&uArr;</p>
    </div>
<script>
        $(document).ready(function() {
				$(window).scroll(function() {
					if ($(this).scrollTop() > 10) {
						$('#myBtn').fadeIn();
					} else {
						$('#myBtn').fadeOut();

					}
				});
				$('#myBtn').click(function() {
					$('body').animate({
						scrollTop : 0
					}, 500);
					return false;
				});
			});

</script> 
</body>    
</html>