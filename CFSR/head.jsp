<html>
<head>
    <link rel="stylesheet" href="CSS/myStyles.css">
    <link rel="icon" href="IMAGES/LOGO/CFSR1.png">
    <link rel=stylesheet href="CSS/animate.css">
    <%@include file="Boot.jsp"%></%@include> 
    <style>
        body{
            width: 100%;
            margin: auto;
        }
        a{
            color: blue;
        }
        b{
            color: white;
        }
    
        .affix {
      top: 0;
      width: 100%;
      z-index: 9999 !important;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
        
        @keyframes color_animation
        {
           0% { background-color: blue; }
            25% { background-color: orange; }
            50% { background-color: yellow; }
            75% { background-color: pink; }
            100% { background-color: gray; }
        }
        .animate_color{
            animation: color_animation 1s infinite ease;
        }
    </style>
    <script src="JS/wow.js"></script>
              <script>
              new WOW().init();
              </script>
     
    </head>    
<body>
    <div id="header">
        <div class="row" style="width: 100%">
        <div class="col-sm-1">
        <img src="IMAGES/LOGO/gvplogo.jpg" style="height: 100pt;width: 100pt">
        </div>
        <div class="col-sm-9">
        <table align=center>
            <tr align=center>
                <td><label style="font-family: Times New Roman; font-size: 16pt; text-transform: uppercase;"><b style="color: black">Gayatri vidya parishad college of engineering(Autonomous)</b></label><br>
                    <label style="font-size: 14pt">Approved by AICTE, New Delhi and Affiliated to JNTU-Kakinada</label><br>
                    <label style="font-size: 13pt"> Re-accredited by NAAC With 'A' Grade with a CGPA of 3.47/4.00</label><br>
                    <label style="font-size: 12pt">Madhurawada, Visakhapatnam - 530048.</label><br>
                    <label class="wow zoomIn"><b class="animate_color"style="font-size: 16pt;color: red">CENTRE&nbsp;FOR&nbsp; FOSTERING&nbsp;SOCIAL&nbsp;RESPONSIBILITY</b></label><br>
                    <label style="font-size: 10pt;color: green">[&nbsp;EMPATHIZE - ENGAGE - EXECUTE - EXCEL&nbsp;]</label>
                </td>
            </tr>
        </table>
        </div>
        <div class="col-sm-1">
            <img src="IMAGES/LOGO/CFSR1.png" style="height: 100pt;width: 100pt">
        </div>
    </div>
        <nav class="nav navbar-inverse" data-spy="affix" data-offset-top="157">
            <div class="container-fluid">
        <ul class=" nav navbar-nav">
        <li><a href="Home.jsp"><b>HOME</b></a></li>
        <li><a href="about.jsp"><b>ABOUT</b></a></li>
        <li><a href="image.jsp"><b>IMAGES</b></a></li>
        <li><a href="volunteer.jsp"><b>ENROLLMENT</b></a></li>
        <li><a href="certificate.jsp"><b>HOURS DONE</b></a></li>
        <li><a href="contact.jsp"><b>CONTACT</b></a></li>
        </ul>
            
        <ul class="nav navbar-nav navbar-right">
            <li><a href="student_reg.jsp"><b>CORE MEMBER REGISTRATION</b></a></li>
        <li id="signup" class="dropdown"><a href="faculty_reg.jsp"><b>FACULTY REGISTRATION</b></a> 
        </li>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span><b>FACULTY LOGIN</b></a></li>
        </ul>
                
<!--        <form name="myForm" class="navbar-form navbar-left" action="VolChecking.jsp" style="padding-left: 10pt" method="post">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Enter Your Roll Number" name="search" pattern="(?=.*\d)(?=.*[A-Z]).{10,}" title="Enter your roll number" required>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
        </form>-->
                
        </div>
        </nav>
        <!--<ul id="drop" style="width: 120px;position: absolute;right: 72px;display: none">
          <li style="float: none"><a href="student_reg.jsp">STUDENT</a></li>
          <li style="float: none"><a href="faculty_reg.jsp">FACULTY</a></li>
        </ul>-->
    </div>
    <script>
        $().ready(function(){
                    $('body').click(function(){
                         $('#drop').fadeOut(); 
                    });
                  $('#signup').mouseenter(function(){
                        $('#drop').fadeIn();         
                  });
                   $('#drop').mouseleave(function(){
                        $('#drop').fadeOut();          
                  });  
            });

    </script>
    </body>
</html>