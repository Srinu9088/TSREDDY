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
<img class="mySlides" src="IMAGES/HOH/IMG-20170308-WA0026.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/B612_20170720_142519.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/IMG-20170308-WA0019.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/IMG-20170308-WA0021.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/IMG-20170308-WA0022.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/IMG-20170308-WA0026.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/IMG_20170720_151859.jpg" style="width:100%">
</div>
       
<div class="column">
<img class="mySlides" src="IMAGES/LOGO/HOH.png" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/B612_20170720_160144.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/DSC_0855.JPG" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/DSCN1301.JPG" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/DSCN1311.JPG" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/DSCN2270.JPG" style="width:100%">
<img class="mySlides" src="IMAGES/HOH/DSCN2489.JPG" style="width:100%">
</div>
    
<div class="column">
<img class="mySlides" src="IMAGES/WER4HELP/IMG-20170904-WA0045.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/WER4HELP/IMG-20170904-WA0043.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/WER4HELP/IMG-20170904-WA0044.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/WER4HELP/IMG-20170904-WA0049.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/WER4HELP/IMG-20170909-WA0015.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/WER4HELP/IMG-20171129-WA0005.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/WER4HELP/IMG_20170909_104811.jpg" style="width:100%">
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