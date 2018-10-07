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
        margin: auto;
        width: 100%;
        
    }    
	</style>
</head>

<body>
    <%@include file="studenthead.jsp"%></%@include>
    
        <br><br>
    <div class="row" align=center style="width: 100%">
        <div class="col-sm-4">
            <p style="border: 1px solid black;height: 380px; width: 370px;text-align: justify;border-radius: 20px;font-size: 15pt;font-weight: bold;padding: 20px">Youth Enlighting Society (Y.E.S) a student volunteer group under motto <b style="color: lawngreen">Lets Change and Spread Change</b> engaged with rural areas, knowing their problems and letting them solve by themselves. Connecting, Communicating & rural contact brought up many reforms in rural areas. Finally <b style="color: royalblue">Join with YES & US </b> for better society.</p>
        </div>
        <div class="col-sm-1" style="width: 420px;padding-top: 50pt">
            <a href="student.jsp"><u style="color: green;font-size: 28pt">Click</u></a><br><label style="font-weight: bold;font-size: 32pt">Here to enroll your activity details.</label>  
        </div>
        <div class="col-sm-4">
        <img src="IMAGES/LOGO/YES.jpg" height="300px" width="300px"><br><label style="color: red;font-family: Arial Black;font-size: 45pt">YES</label>
        </div>
    </div>
</body>
</html>
