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
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802296747.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802104912.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802189109.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802189109.jpg" style="width:100%">
</div>
       
<div class="column">
<img class="mySlides" src="IMAGES/LOGO/Rotaract1.png" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802395801.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802416542.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802735043.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514803076989.jpg" style="width:100%">   
</div>
<div class="column">
<img class="mySlides" src="IMAGES/two.png" style="width:100%">
 <img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802212567.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802304187.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802326380.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/Rotaract/FB_IMG_1514802360469.jpg" style="width:100%">   
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