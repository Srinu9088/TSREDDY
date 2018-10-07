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
    <%@include file="studenthead.jsp"%></%@include><br><br>
    <div class="row" align=center style="width: 100%">
        <div class="col-sm-4">
        <p  style="border: 1px solid black;height: 650px; width: 370px;text-align: justify;border-radius: 20px;font-size: 15pt;font-weight: bold;padding: 20px">Rotary is an international service organization and is one of the largest NGO's around the world. It is a social organization open to all with a motto of <b style="color: blue">SERVICE ABOVE SELF</b> and was started in 1905.By now its total membership is more than 1.22 million with 34,282 clubs world-wide. The most notable current project of rotary is POLIO PLUS, which is contributing to the global eradication of polio and has now become a partner in GLOBAL POLIO ERADICATION INITIATIVE with WHO, UCIEF etc.  The Rotaract Club is more than just a community service club. It is a part of a global effort to bring peace and international understanding to the world. This effort starts at community level.</p>
        </div>
        <div class="col-sm-1" style="height: 400px; width: 430px;padding-top: 50pt">
            <a href="student.jsp"><u style="color: green;font-size: 28pt">Click</u></a><br><label style="font-weight: bold;font-size: 32pt">Here to enroll your activity details.</label>
        </div>
        <div class="col-sm-4">
        <img src="IMAGES/LOGO/Rotaract1.png" height="350px" width="450px" style="padding-left: 20pt"><br><label style="color: red;font-size: 30pt;font-family: arial black;padding-left: 20pt"><b>RC  GVP</b></label>
        </div>
    </div>
           
</body>
</html>
