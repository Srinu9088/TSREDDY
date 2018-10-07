<html>
<head>
    <title>Home page</title>
    <link rel="icon" href="IMAGES/LOGO/CFSR1.png">
    <script src="JS/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="CSS/myStyles.css">
    <link rel=stylesheet href="CSS/animate.css">
    <jsp:include page="Boot.jsp"></jsp:include>
    <jsp:include page="head.jsp"></jsp:include>
</head>
<body>    
     <script src="JS/wow.js"></script>
              <script>
              new WOW().init();
              </script>
     
    <div class="col-sm-9" style="padding-top: 20pt;padding-left: 195pt;font-size: 20pt;color: #008080">
        <b style="color: blueviolet">Student can login by select any one of the Social Groups</b></div><br>
<div class="container">
    <div class="row">
        <div class="wow slideInLeft col-sm-4" align=center>
        <img class="social_images" src="IMAGES/rc.png"><br>
        <button class="social_group"><a href="ROTARACTlogin.jsp">RC GVP</a></button>
        </div>
        <div class="wow zoomIn col-sm-4" align=center>
        <img class="social_images" src="IMAGES/LOGO/NSS.png"><br>
        <button class="social_group"><a href="NSSlogin.jsp">NSS</a></button>
        </div>
        <div class="wow slideInRight col-sm-4" align=center>
        <img class="social_images" src="IMAGES/wer4h.png">
        <button class="social_group"><a href="WeR4Helplogin.jsp">WE&nbsp;R&nbsp;4&nbsp;HELP</a></button>
        </div>
    </div>   
</div><br>
    <div class="container">
     <div class="row">
        <div class="wow slideInDown col-sm-4" align=center>
        <img class="social_images" src="IMAGES/rcgvp.png"><br>
         <button class="social_group"><a href=YESlogin.jsp>YES</a></button>
        </div>
        <div class="wow rollIn col-sm-4" align=center>
        <img class="social_images" src="IMAGES/LOGO/HOH.png"><br>
        <button class="social_group"><a href=HOHlogin.jsp>HOH</a></button>
         </div>
        <div class="wow slideInDown col-sm-4" align=center>
        <img class="social_images" src="IMAGES/vidya.png">
        <button class="social_group"><a href=VIDYADAANlogin.jsp>VIDYADAAN</a></button>
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

</script> <br>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
    
</html>