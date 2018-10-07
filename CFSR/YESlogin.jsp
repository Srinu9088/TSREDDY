<%@ page import = "java.sql.*" %>
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
            window.location.href = "YES.jsp";
            }
        else
            {
            document.getElementById("grp_error").innerHTML = this.responseText;
            }
    }
    
  }
  xmlhttp.open("GET", "check_log_stu.jsp?uname="+$val1+"&pass="+$val2, true);
  xmlhttp.send();
return false;
}
</script>   

</head>

<body>
<%@include file="head.jsp"%>
    <br><br>
        <div>
        <center>
            <form method="post" onsubmit="return checkLog()">
             <div class="login">
                    <label><h3 style="font-size: 15pt; font-weight: bold;">Please Enter Login Details</h3></label>
			     <table class="login_tab" height="160pt" width="400pt" align=center>
			  <tr>
                  <td><label>UserName:</label></td>
                  <td><input type="text" size=30 id="u" name="username" required autofocus placeholder="Enter Your email"></td>
            </tr>
                  
			   <tr>
                   <td><label>Password:</label></td>
                   <td><input type="password" size=30 id="p" name="password" required placeholder="Enter password"></td>
                </tr>
                
				<tr>
                    <td colspan=2 align="center"><input class="login_sub" type="submit" value="LOGIN"></td>
                </tr>
                
                </table>
                </div>
        </form>
            </center>
        </div>
    
<br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>
