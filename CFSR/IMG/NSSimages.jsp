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
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0189.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG_20171122_093522970.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0154.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG20170730101529_1.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0061.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0111.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/two.png" style="width:100%">
</div>
       
<div class="column">
<img class="mySlides" src="IMAGES/LOGO/NSS.png" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/andhra.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/as.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/fv.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170107-WA0017.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170107-WA0062.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0031.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0058.jpg" style="width:100%">
</div>
    
<div class="column">
<img class="mySlides" src="IMAGES/three.png" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170109-WA0013.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170831-WA0049.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0150.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG_20171122_093522970.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0189.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170927-WA0004.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170927-WA0010.jpg" style="width:100%">
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
					}, 10000);
					return false;
				});
			});

</script>
</body>
</html>