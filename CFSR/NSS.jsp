<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<html>
<head><title align="center">Student</title>
<script src="jquery-1.11.3.min.js"></script>
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
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
    <%@include file="studenthead.jsp"%></%@include><br><br>
    <div class="row" align=center style="width: 100%">
        <div class="col-sm-4">
            <p style="border: 1px solid black;height: 620px; width: 380px;text-align: justify;border-radius: 20px;font-size: 15pt;font-weight: bold;padding: 20px">NSS with a motto of overall personality development of students.The Motto of National Service Scheme is <b style="color: darkblue">NOT ME BUT YOU</b>. This reflects the essence of democratic living and upholds the need for selfless service. It shows that the welfare of an individual is ultimately depend on the welfare of the society on the whole. The NSS symbol is embossed on the NSS badge. The eight bars represent 24 hours of the day. It reminds to be in readiness for the service of the nation. The red colour indicates the active energy and high spirit. The navy blue colour indicates the contribution shared for the welfare of the mankind.</p>
        </div>
        <div class="col-sm-1" style="height: 400px; width: 420px;padding-top: 50pt">
            <a href="student.jsp"><u style="color: green;font-size: 28pt">Click</u></a> <br> <label style="font-weight: bold;font-size: 32pt">Here to enroll your activity details. </label> 
        </div>
        <div class="col-sm-4">
        <img src="IMAGES/LOGO/NSS.png" height="300px" width="300px"><br><label style="color: red;font-size: 45pt;font-family: Arial Black"><b>NSS</b></label>
        </div>
        </div>
</body>
</html>
