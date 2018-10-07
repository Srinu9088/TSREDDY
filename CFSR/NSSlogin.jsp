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
                alert("Successfully logged");
                window.location.href = "NSS.jsp";
            }
        else
            {
                alert("Invalid username or password");
                //document.getElementById("grp_error").innerHTML = this.responseText;
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
                    <label><p style="font-size: 15pt">Please Enter Login Details</p></label>
			     <table class="login_tab" height="160pt" width="400pt" align=center>
			  <tr>
                  <td><label>UserName:</label></td>
                  <td><input type="text" size=30 id="u" name="username" required autofocus placeholder="Enter your email"></td>
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
    <!--<% 
       int count=0;
       try
        {
               
        String Name = request.getParameter("username");
        String Pwd = request.getParameter("password");
        
        DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select EMAIL,PASS,LNAME from STUDENT_REG where EMAIL=? and PASS=?");
        stmt.setString(1,Name);
        stmt.setString(2,Pwd);
        ResultSet rs=stmt.executeQuery();
            while(rs.next())
            {
                String uname = rs.getString("EMAIL");
                String Password = rs.getString("PASS");
                String name = rs.getString("LNAME");
                 session.setAttribute("Name",name);
           
                if(uname.equals(Name) && Password.equals(Pwd))
                {
                %><script>alert("Login Successfully");</script><%
                response.sendRedirect("NSS.jsp");        
                }
                else
                {
                response.sendRedirect("NSSlogin.jsp");
                }
            }
        }
        catch(Exception e)
        {
        System.out.println("Error in Connection");
        e.printStackTrace();
        } 
                   
 %>-->
<br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>
