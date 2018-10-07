<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<html>
<head><title align="center">Student</title>
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <%@include file="studenthead.jsp"%></%@include>
    
     <br><br><div class="row" align=center style="width: 100%">
        <div class="col-sm-4">
            <p style="border: 1px solid black;height: 470px; width: 380px;text-align: justify;border-radius: 20px;font-size: 15pt;font-weight: bold;padding: 20px">We R 4 Help is a social service organization started by engineering students of Gayathri Vidya Parishad College of Engineering in the year 2012. This organization serves the society by providing basic amenities to the poor and needy who are unable to get those even. This organization functions by collecting one rupee per day from each student. With around 100 student volunteers, members and faculty coordinators this group one of the active group under the guidance of CFSR, G.V.P C.E (A).</p>
        </div>
        <div class="col-sm-4" style="width: 430px">
              <a href="student.jsp" style="padding-top: 80pt"><u style="color: green;font-size: 28pt">Click</u></a> <br><label style="font-weight: bold;font-size: 32pt">Here to enroll your activity details.</label>  
        </div>
        <div class="col-sm-4">
        <img src="IMAGES/LOGO/wer4.png" height="430px" width="350px" style="border-radius: 20pt">
        </div>
    </div>
</body>
</html>
