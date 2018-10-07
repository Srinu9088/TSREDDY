<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<html>
<head><title align="center">Student</title>
<link rel="stylesheet" href="CSS/myStyles.css">
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="Boot.jsp"%></%@include>
<style>
    body{
        width: 100%;
        margin: auto;
        }    

	</style>
</head>

<body>
    <%@include file="studenthead.jsp"%></%@include>
    
        <br><br>
        <div align=center style="width: 100%">
        <div class="col-sm-4">
            <p style="border: 1px solid black;height: 460px; width: 370px;text-align: justify;border-radius: 20px;font-size: 15pt;font-weight: bold;padding: 20px">Vidyadaan with an objective of supporting under privileged with Primary Education. Identifying literacy levels of the students at primary level education in the under developed government schools. To provide scholarship for a student who is needy in our college. Maintaining ideas hub for publishing the innovative ideas of the students of GVPCOE. To develop contact with the industries in which education is the main role in their CSR activities.</p>
        </div>
        <div class="col-sm-1" style="width: 430px;padding-top: 50pt">
             <a href="student.jsp"><u style="color: green;font-size: 28pt">Click</u></a><label style="font-weight: bold;font-size: 32pt">Here to enroll your activity details.</label>  
        </div>
        <div class="col-sm-4">
        <img src="IMAGES/LOGO/Vidyadaan.png" height="350px" width="330px"><br><label style="color: red;font-size: 33pt;font-family: Arial Black"><b>VIDYADAAN</b></label>
        </div>
    </div>
</body>
</html>
