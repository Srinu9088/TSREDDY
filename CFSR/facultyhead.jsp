<html>
<head>
    <link rel="stylesheet" href="CSS/myStyles.css">
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="icon" href="IMAGES/LOGO/CFSR1.png">
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
    </head>    
<body>
    <div id="fhead">
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
                    <label><b class="animate_color"style="font-size: 14pt;color: red">CENTRE&nbsp;FOR&nbsp; FOSTERING&nbsp;SOCIAL&nbsp;RESPONSIBILITY</b></label><br>
                    <label style="font-size: 10pt;color: green">[&nbsp;EMPATHIZE - ENGAGE - EXECUTE - EXCEL&nbsp;]</label>
                </td>
            </tr>
        </table>
        </div>
        <div class="col-sm-1">
            <img src="IMAGES/LOGO/CFSR1.png" style="height: 100pt;width: 100pt">
        </div>
    </div>
    </div>
    <div id="lis">
        <nav class="nav navbar-inverse" data-spy="affix" data-offset-top="157">
            <div class="container-fluid">
        <ul class=" nav navbar-nav">
         <!--<li>
        <div id="mySidenav">
        <a href="NSSimages.jsp" id="nss">NSS</a>
        <a href="ROTARACTimages.jsp" id="roatract">ROTARACT</a>
        <a href="VIDYADAANimages.jsp" id="vidyadaan">VIDYADAAN</a>
        <a href="WeR4Helpimages.jsp" id="wer4help">WeR4Help</a>
        <a href="YESimages.jsp" id="yes">YES</a>
        <a href="HOHimages.jsp" id="hoh">HoH</a></div></li>-->
        <!--<li><a href="image.jsp"><b>IMAGES</b></a></li>-->
        <!--<li><a href="student.jsp">STUDENT ENROLL</a></li>--> 
        <li><a href="volunteerdata.jsp"><b>VOLUNTEER DATA</b></a></li> 
        <li><a href="StudentInfo.jsp"><b>ACTIVITY DATA</b></a></li>
        <li><a href="facultysearch.jsp"><b>SEARCH</b></a></li>
        <li><a href="DelStudent.jsp"><b>DELETE</b></a></li>
        </ul>
          
         <form class="navbar-form navbar-left" action="ActivityChecking(faculty).jsp" style="padding-left: 300pt" method="post">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Search" name="search" pattern="(?=.*\d)(?=.*[A-Z]).{10,}" title="Enter your roll number" required>
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
        </form>
                
        <ul class="nav navbar-nav navbar-right">
            <li><a href="user_page.jsp"><b>BACK</b></a></li>
        <li><a href="logout.jsp"><span class="ion-power" style="color: red"></span> <b>LOGOUT</b></a></li>
        </ul>
        </div>    
        </nav>       
    </div>
  <!--  <script>
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

    </script>-->
    </body>
</html>