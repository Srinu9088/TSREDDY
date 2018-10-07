<!
<html>
<head>
    <link rel="icon" href="IMAGES/LOGO/CFSR1.png">
    <script src="JS/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="CSS/myCss.css">
<title>Images</title>
    
    <style>
        body{
            margin: auto;
            width: 100%;
        }
    </style>
	
</head>
    
<body>	
    
      <%@include file="header1.jsp"%>
          
              
   <div class="row"> 
   
<div class="column">
<img class="mySlides" src="IMAGES/one.png" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0088.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0089.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0085.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170706-WA0012.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0086.jpg" style="width:100%">
</div>
       
<div class="column">
<img class="mySlides" src="IMAGES/YES/an%20yes%20logo.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/YES/IMG-20170706-WA0002.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/YES/IMG-20170706-WA0005.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/YES/IMG-20170706-WA0006.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/YES/IMG-20170706-WA0007.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/YES/IMG-20170706-WA0008.jpg" style="width:100%">
</div>
    
<div class="column">
<img class="mySlides2" src="IMAGES/three.png" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0047.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0081.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0082.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0083.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0084.jpg" style="width:100%">
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
					}, 1000);
					return false;
				});
			});

</script>
</body>
</html>