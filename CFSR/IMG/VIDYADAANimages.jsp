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
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000335.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000341.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000345.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000327.jpg" style="width:100%">
</div>
       
<div class="column">
<img class="mySlides" src="IMAGES/LOGO/Vidyadaan.png" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000348.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000349.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000320.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000321.jpg" style="width:100%">
</div>
    
<div class="column">
<img class="mySlides" src="IMAGES/three.png" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000326.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000328.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000332.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000333.jpg" style="width:100%">
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