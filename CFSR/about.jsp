<html>
<head>
<title>About CFSR System</title>
<link rel="icon" href="IMAGES/LOGO/CFSR1.png">
    <script src="JS/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="CSS/myStyles.css">
    <link rel=stylesheet href="CSS/animate.css">
<jsp:include page="head.jsp"></jsp:include>
    <jsp:include page="Boot.jsp"></jsp:include>

        <style>
            body{
                margin: auto;
                
                width: 100%;
            }
        </style>
<body>
<script src="JS/wow.js"></script>
              <script>
              new WOW().init();
              </script>
<div class="container-fluid"><br>
    
<div class="wow zoomIn about_box">
Centre for fostering social responsibility (CFSR) is an apex body which aims at making social responsibility among student community. Alongside, it encourages students to design and execute activities of social concern that keep
them close to society. The society in turn gets sensitized on the way to address its problems on its own.<br><br>
    
CFSR aims to instill passion in community engagement among students for the long term development of youth in general and society in particular. To attain these objectives among students, CFSR coordinates its activities with various service groups that execute in the college.<br><br>
    
    <b style="font-size: 20pt;color: #ff00ff">NSS</b> with a motto of overall personality development of students.<br><br>
    
    <b style="font-size: 18pt;color: black">ROTARACT</b> with an objective of developing  leadership skills among the students.<br><br>
    
    <b style="font-size: 18pt;color: #00ff7f">VIDYADAAN</b> with an objective of supporting under privileged with Primary Education.<br><br>
    
    <b style="font-size: 20pt;color: #1e90ff">WeR4Help</b> works with a mission of providing basic provisions among needy families in the vicinity of the college.<br><br>
    
    <b style="font-size: 20pt;color: 	#adff2f">YES</b> (Youth Enlightening the Society) sensitizes people in the                 rural areas on various programmes available from Government and other agencies.<br><br>
    
    <b style="font-size: 20pt;color: #00ffff">HoH</b> (Hearts of Humanity) has the sole objective of bringing cheer among the orphans.
    </div>
    </div>
     
        <div>
			<button id="myBtn">&uArr;</button>
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
					$('html, body').animate({
						scrollTop : 0
					}, 500);
					return false;
				});
			});

</script>
<jsp:include page="footer.jsp"></jsp:include>
    

    </body>
</html>

