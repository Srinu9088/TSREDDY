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
    <%@include file="studenthead.jsp"%></%@include><br>
   
    <div class="row" align=center style="width: 100%">
        <div class="col-sm-4">
            <p style="border: 1px solid black;height: 570px; width: 360px;text-align: justify;border-radius: 20px;font-size: 15pt;font-weight: bold;padding: 20px">Hearts of humanity is an initiation to help orphanages/refuges with their needs and mitigate their loneliness by spending time with them alongside, increasing the social conscious of every student. Our target was never to conquer an area of service, but to cultivate the healthy spirit of sharing and doing our best to serve people. We, starting as a small organization and moving forward to help one orphanage after other, not only built a society, but also a vision that makes a student a better social animal.<b style="color: green">We as a team, We as hearts of humanity proudly say.</b></p>
        </div>
        <div class="col-sm-1" style="width: 430px;padding-top: 50pt" >
            <a href="student.jsp"><b style="color: black;font-size: 28pt"><u style="color: green">Click</u></b></a><br><label style="font-weight: bold;font-size: 32pt">Here to enroll your activity details.</label>
        </div>
        <div class="col-sm-4">
            <img src="IMAGES/LOGO/HOH.png" height="300px" width="280px"><br><label style="color: red;font-size: 60pt;font-family: arial black"><b>HOH</b></label>
        </div>
    </div>
</body>
</html>
