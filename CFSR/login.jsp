<%@ page import = "java.sql.*, java.util.*" %>
<%@ page import = "com.db.*" %>
<html>
<head><title align="center">Login</title>
 <link rel="icon" href="IMAGES/LOGO/CFSR1.png">
<script src="jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="CSS/myStyles.css">
    <%@include file="Boot.jsp"%></%@include>
<style>
    body{
        margin: auto;
        width: 100%;
    }
</style>
<script>
function checkLog() {
     /*var val1 = document.getElementById("u"); 
    var val2 = document.getElementById("p");*/ 
    $val1 = $('#u').val();
    $val2 = $('#p').val();
    //alert($val1+" "+$val2);
  var xmlhttp;

    if (window.XMLHttpRequest)
    {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp = new XMLHttpRequest();
    }
    else
    {
        // code for IE6, IE5
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
  xmlhttp.onreadystatechange = function() 
  {
      
    if (this.readyState == 4 && this.status == 200) 
    {
        
        var response = $.trim(xmlhttp.responseText);
        //alert(response);
        
        if (response == "success")
            {
            alert("Successfully logged")
            window.location.href = "user_page.jsp";
            }
        else
            {
            alert("Invalid username or password");
            //document.getElementById("grp_error").innerHTML = this.responseText;
            }
    }
    
  }
  xmlhttp.open("GET", "check_log.jsp?uname="+$val1+"&pass="+$val2, true);
  xmlhttp.send();
return false;
}
    </script>   
    
</head>

<body>
<%@include file="head.jsp"%>
        <br><br>
        <div> <!--<div id="grp_error" style="color: red;text-align: center;"></div> -->
            <center>
            <div class="login">
                 <form method="post" name="loginform" onsubmit="return checkLog()">
                     <label><p style="font-size: 15pt">Please Enter Login Details</p></label>
                    
			     <table height="200pt" width="400pt">
			  <tr>
                  <td><label>UserName:</label></td>
                  <td><input type="text" id="u" size=30 name="username" required autofocus placeholder="Enter your email"></td>
            </tr>
                  
			   <tr>
                   <td><label>Password:</label></td>
                   <td><input type="password" id="p" size=30 name="password" required placeholder="Enter password"></td>
                </tr>
                
				<tr>
                    <td colspan=2 align="center"><input class="login_sub" type="submit" value="LOGIN"></td>
                </tr>
                
                </table>
                </form>
                </div>
            </center>
        </div>
<br><br><br><br><br>    
<jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>
