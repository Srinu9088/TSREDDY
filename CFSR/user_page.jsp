<%@ page session="true" %>
<% String Name=(String)session.getAttribute("Name");
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
  
<html>
<head>
<title>User Page</title>
<link rel="icon" href="IMAGES/LOGO/CFSR1.png">
 <link rel="stylesheet" href="CSS/myStyles.css"> 
    <%@include file="Boot.jsp"%></%@include>
    <style>
        body{
            margin: auto;
            width: 100%;
        }
    </style>
	
</head>
    
<body>	
   
    <%@include file="facultyhead.jsp"%>
    
<div class="row">
<marquee class="welcome_guest" onmouseover="this.stop()" onmouseout="this.start()"><% out.println("<p>@@@ Welcome"+" "+Name+" "+"@@@</p>"); %></%></marquee>
 <div class="column" >
<img class="mySlides" src="IMAGES/LOGO/NSS.png" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0189.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG_20171122_093522970.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0154.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG20170730101529_1.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/andhra.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/as.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/fv.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170107-WA0017.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170107-WA0062.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0031.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0058.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0061.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170108-WA0111.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170109-WA0013.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170831-WA0049.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0150.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG_20171122_093522970.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170923-WA0189.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170927-WA0004.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/NSS/IMG-20170927-WA0010.jpg" style="width:100%">

 <img class="mySlides" src="IMAGES/LOGO/Vidyadaan.png" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000348.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000349.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000320.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000321.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000326.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000328.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000332.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000333.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000335.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000341.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000345.jpg" style="width:100%">
<img class="mySlides" src="IMAGES/VIDYADAAN/2018-02-03-PHOTO-00000327.jpg" style="width:100%">
 </div>
<div class="column">
<img class="mySlides1" src="IMAGES/LOGO/HOH.png" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/IMG-20170308-WA0026.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/B612_20170720_142519.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/IMG-20170308-WA0019.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/IMG-20170308-WA0021.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/IMG-20170308-WA0022.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/IMG-20170308-WA0026.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/IMG_20170720_151859.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/B612_20170720_160144.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/DSC_0855.JPG" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/DSCN1301.JPG" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/DSCN1311.JPG" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/DSCN2270.JPG" style="width:100%">
<img class="mySlides1" src="IMAGES/HOH/DSCN2489.JPG" style="width:100%">
    
<img class="mySlides1" src="IMAGES/LOGO/wer4help.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG_20170909_121258.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG-20170904-WA0048.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG-20170904-WA0045.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG-20170904-WA0043.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG-20170904-WA0044.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG-20170904-WA0049.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG-20170909-WA0015.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG-20171129-WA0005.jpg" style="width:100%">
<img class="mySlides1" src="IMAGES/WER4HELP/IMG_20170909_104811.jpg" style="width:100%">
</div>
    
<div class="column">
<img class="mySlides2" src="IMAGES/YES/an%20yes%20logo.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170706-WA0002.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170706-WA0005.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170706-WA0006.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170706-WA0007.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170706-WA0008.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0088.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0089.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0085.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170706-WA0012.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0086.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0047.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0081.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0082.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0083.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/YES/IMG-20170723-WA0084.jpg" style="width:100%">
    
<img class="mySlides2" src="IMAGES/LOGO/Rotaract1.png" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802395801.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802416542.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802735043.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514803076989.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802296747.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802104912.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802189109.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802189109.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802212567.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802304187.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802326380.jpg" style="width:100%">
<img class="mySlides2" src="IMAGES/Rotaract/FB_IMG_1514802360469.jpg" style="width:100%">
</div>
 </div>
<script>
	
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 3000); // Change image every 5 seconds
}
    
      var Index = 0;
slides1();

function slides1() {
    var i;
    var x = document.getElementsByClassName("mySlides1");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    Index++;
    if (Index > x.length) {Index = 1}    
    x[Index-1].style.display = "block";  
    setTimeout(slides1, 3000); // Change image every 3 seconds
}
    
    var myIndex2 = 0;
slides2();

function slides2() {
    var i;
    var x = document.getElementsByClassName("mySlides2");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex2++;
    if (myIndex2 > x.length) {myIndex2 = 1}    
    x[myIndex2-1].style.display = "block";  
    setTimeout(slides2, 3000); // Change image every 3 seconds
}
</script>
</body>
</html>