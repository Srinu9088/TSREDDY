<html>
<head>
    <link rel="stylesheet" href="CSS/myStyles.css">
    <style>
    body{        
        margin: auto;
        width: 100%;
    }
        li:hover{background-color: #008080;}
    </style>
    
    </head>

    
<body>
    <div id="header" class="fixed-header" style="background-color: white">
        <table width="100%" align=center>
            <tr align=center><td><img class="header_img" src="IMAGES/LOGO/gvplogo.jpg">
                <td><label style="font-family: Times New Roman; font-size: 18pt; text-transform: uppercase;"><b>Gayatri vidya parishad college of engineering(Autonomous)</b></label><br>
                    <label style="font-size: 17pt">Approved by AICTE, New Delhi and Affiliated to JNTU-Kakinada</label><br>
                    <label style="font-size: 16pt"> Re-accredited by NAAC With 'A' Grade with a CGPA of 3.47/4.00</label><br>
                    <label style="font-size: 15pt">Madhurawada, Visakhapatnam - 530048.</label><br>
                    <label><b class="animate_color"style="font-size: 17pt;color: red">CENTRE&nbsp;FOR&nbsp; FOSTERING&nbsp;SOCIAL&nbsp;RESPONSIBILITY</b></label><br>
                    <label style="font-size: 14pt;color: green">[&nbsp;EMPATHIZE - ENGAGE - EXECUTE - EXCEL&nbsp;]</label>
                </td>
                <td><img class="header_img" src="IMAGES/LOGO/CFSR1.png">
            </tr>
        </table>
        <ul>
        <li><a href="Home.jsp">HOME</a></li>
        <li><a href="about.jsp">ABOUT</a></li>
        <li><a href="image.jsp">IMAGES</a></li>
        <li><a href="volunteer.jsp">ENROLMENT</a></li>
        <li><a href="certificate.jsp">HOURS DONE</a></li>
        <li><a href="contact.jsp">CONTACT</a></li>
        <li style="float: right"><a href="login.jsp">SIGN IN</a></li>
        <li style="float: right">
            <a onclick="myFunction()" class="dropbtn">SIGN UP</a>
                <div id="myDropdown" class="dropdown-content">
                <a href="student_reg.jsp">STUDENT</a>
                <a href="faculty_reg.jsp">FACULTY</a>
               </div>
            </li>
        </ul>
     </div>

<script>
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
    </body>
</html>