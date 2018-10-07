<html>
<head>
<title>Contact of CFSR System</title>
    <link rel="icon" href="IMAGES/LOGO/CFSR1.png">
    <%@include file="head.jsp"%></%@include>
    <%@include file="Boot.jsp"%></%@include>
    <link rel="stylesheet" href="CSS/myStyles.css">
    <link rel=stylesheet href="CSS/animate.css">
        <style>
            body{
                background-color: white;
            }
             /* Create three equal columns that floats next to each other */
        .column {
            float: left;
            width: 28.49%;
            padding: 12px;
            height: 15%;
            margin: 0pt 10pt 5pt 5pt;
            }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
            
        }
            .column1{
                border: 2px solid #00ff7f;
                border-radius: 10pt;
                width:30%;
                margin-top: 55pt;
            }
            .box{
                color: black;
                margin: 0pt 50pt 0pt 50pt;
                box-shadow: 3px 6px 62px -13px rgba(0,0,0,0.44);
                padding: 70px 40px 250px 40px;
                text-align: justify;
                font-size: 14pt;
                background-color: white;
                margin-top: 30pt;               
               
            }
    </style>     
</head>

<body>
    <script src="JS/wow.js"></script>
              <script>
              new WOW().init();
              </script>
    <div class="box">
<div class="row">
    
<div class="wow slideInLeft column" style="text-align: center">
    <label style="font-family: algerian;font-size: 15pt;color: green">Faculty Body</label><br><br>
    Prof. Dr. Y.V.P.K. Raghava<br> Dean, Student Affairs<br>
    Dr. C.V. Nageswara Rao<br> Associate Director - CFSR<br>
    Sri A.R.J. Srikanth<br> Assistant Director - CFSR <br>
    Sri N.Ch.N. Suresh<br> Asst. Professor, Dept of Mathematics <br>
    Smt P. Aruna Kumari<br> Asst. Professor, Dept of ECE<br>
    Sri D. Sita Siva<br> Asst. Professor, Dept of ECE <br>
    Sri V. Mahalakshmi Naidu<br> Asst. Professor, Dept of Civil Engg <br>
    Sri Y. C. V. Kondaiah <br> Asst. Professor, Dept of EEE <br>
    Sri Ch. Rajesh<br> Asst. Professor, Dept of IT <br>
    Sri Ch. Kondaiah<br> Asst. Professor, Dept of CSE <br>
    Sri T. Ravindra<br> Asst. Professor, Dept of ECE
</div>
    
<div class="wow zoomIn column column1" style="height: 79%;text-align: center">
    <label style="font-family: algerian;font-size: 15pt;color: green">For queries Contact :</label><br><br>
     Dr. C.V. Nageswara Rao<br> Associate Director CFSR<br>gmail: cvnr74@gvpce.ac.in<br>Phn: 8885043445, 9848083814<br>
    G.V.S. Devendranath<br> III B.Tech, CSE<br>gmail: devendranathg97@gmail.com<br>Phn: 7675952340<br>
    S.S.S. Ramanujam<br> III B.Tech ECE <br>gmail: saketh.ramanujam98@gmail.com<br>Phn: 9848045401<br>
    N. Bhuavaneswari<br> III B.Tech CIVIL <br>gmail: bhuvana.neeli@gmail.com<br>Phn: 7660951356
</div>
    
<div class="wow slideInRight column" style="text-align: center">
 <label style="font-family: algerian;font-size: 15pt;color: green">Student body</label><br><br>
    V.R.L.M. Rukmini<br> IV B.Tech MECH<br>
    A.Sai Lakshmi <br> IV B.Tech CSE <br>
    G.H.V. Prasad <br> III B.Tech CHEMICAL <br>
    S. Bhagya Sree <br> III B.Tech IT<br>
    G.H.V. Prasad<br> III B.Tech CHEMICAL <br>
    K.A.S.S. Sindhura <br> III B.Tech EEE <br>
    G. Alekhya  <br> IV B.Tech ECE <br>
     Umar Shivali <br> IV B.Tech ECE <br>
    E. Jeevan Yadhidya <br> IV B.Tech EEE <br>
    G. Bhavya<br> III B.Tech MECH<br>
    P. Srinivas<br> III B.Tech MECH<br>
    P. Sarada Devi<br> III B.Tech CSE<br>
    T. SaiKumar<br> III B.Tech ECE<br>
    G. Venkatesh<br> III B.Tech CHEMICAL<br>
    P. Mandakini<br> III B.Tech CSE
    
</div> 
 </div>
    </div>
  <br><br><br>  
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

