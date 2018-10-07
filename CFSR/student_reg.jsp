<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<html>
<head><title>Registration</title>
<link rel="icon" href="IMAGES/LOGO/CFSR1.png">
<link rel="stylesheet" href="CSS/myStyles.css">
    <link rel=stylesheet href="CSS/animate.css">
    <%@include file="Boot.jsp"%></%@include>
<style>
    body{
        margin: auto;
        width: 100%;
    }
</style>
    <script>
    function success(){
        alert("Registered Successfully and press OK to go to Home page");
    }
        
      function valid()
      {
      
         if( document.sForm.fname.value == "" )
         {
            alert( "Please provide your First Name!" );
            document.sForm.fname.focus() ;
            return false;
         }
         
         if( document.sForm.lname.value == "" )
         {
            alert( "Please provide your Last Name!" );
            document.sForm.lname.focus() ;
            return false;
         }
        if( document.sForm.pwd.value == "" && document.sForm.mobile.value.length <= 8 )
         {
            alert( "Please provide your password with minimum 8 characters!" );
            document.pwd.lname.focus() ;
            return false;
         }
          
        var emailID = document.sForm.email.value;
         atpos = emailID.indexOf("@");
         dotpos = emailID.lastIndexOf(".");
         
         if (atpos < 1 || ( dotpos - atpos < 2 )) 
         {
            alert("Please enter correct email ID")
            document.sForm.email.focus() ;
            return false;
         }
          
        if( document.sForm.mobile.value == "" ||
           isNaN( document.sForm.mobile.value) ||
           document.sForm.mobile.value.length != 10 )
        {
            alert( "Please provide a Mobile No in the format 123." );
            document.sForm.mobile.focus() ;
            return false;
        }
    
         return( true );
      }
</script>
    
    <script>
        function loadDoc(value) {
        
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById("mail_error").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "check_mail_stu.jsp?m="+value, true);
  xhttp.send();
}

function loadNum(num) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      
    if (this.readyState == 4 && this.status == 200) {
    //alert(xhttp.responseText);
        var res = $.trim(xhttp.responseText);
       // alert(res);
        if(res == "Yes")
            {
                //document.getElementById("vol_error").innerHTML = this.responseText;
                alert("You are not eligiable for registration because you are not enrolled in any social group");
                document.getElementById("sId").value="";
            }
    }
  };
  xhttp.open("GET", "check_vol_number.jsp?n="+num, true);
  xhttp.send();
}
    </script>
</head>

<body >
    
<script src="JS/wow.js"></script>
              <script>
              new WOW().init();
              </script>
    <%@include file="head.jsp"%><br>
        <center><label style="color: green;font-size: 25pt">Student Registration:</label>
        <!--<div id="vol_error" style="color: red;text-transform: capitalize;"></div> -->
          <div id="mail_error" style="color: red;text-transform: capitalize"></div> 
        </center><br><br>
	   <div class="container-fluid">
         
       <center><form name="sForm" method="post" onsubmit="return(valid() && success());">
        <div class="wow zoomIn register">
            <label style="font-size: 20pt">Please Enter Your Details</label>
        <table  width="500px" height="350px">
           
           
            <tr>
                <td><label> First Name</label></td>
                <td> <input type=text name="fname" autofocus pattern="[A-Za-z\s]+" title="Enter Characters Only"></td>
            </tr>
            <tr>
                <td><label>Last Name</label></td>
                <td> <input type=text name="lname" pattern="[A-Za-z\s]+" title="Enter Characters Only"></td>
            </tr>
            
            <tr>
            <td><label>Student_Id</label></td>
            <td><input type="text" id="sId" name="sid" onkeyup="loadNum(this.value)"></td>
            </tr>   
            
             <tr>
                 <td><label> Email</label></td>
                <td> <input type=email name="email" onkeyup="loadDoc(this.value)"></td>
            </tr>
            <tr>
                <td><label> Password</label></td>
                <td> <input type=password name="pwd"></td>
            </tr>
            <tr>
                <td><label>Mobile</label></td>
                <td><input type=number name="mobile"></td>
            </tr>
            <tr>
                <td colspan=2 align=center><input type=submit class="register_submit" value="SUBMIT">
                                           <input type=reset class="register_reset" value="RESET"></td>
            </tr>
                
        </table>
        </div>
            </form>
            </center>
            </div>
            	<% 
                DBScript db = new DBScript();
               String FName = request.getParameter("fname");
               String LName = request.getParameter("lname");
                String Sid = request.getParameter("sid");
               String Email = request.getParameter("email");
               String Pass = request.getParameter("pwd");
               String Mobile = request.getParameter("mobile");
               try
               {
                int count=0;  
                Class.forName(db.driverName());
                Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
                PreparedStatement stmt = con.prepareStatement("insert into STUDENT_REG values(?,?,?,?,?,?)");
                stmt.setString(1,FName);
                stmt.setString(2,LName);
                stmt.setString(3,Sid);
                stmt.setString(4,Email);
                stmt.setString(5,Pass);
                //stmt.setInt(6,Mobile);
                stmt.setString(6,Mobile);
                
                count=stmt.executeUpdate();
                   if(count>0)
                    {
                       response.sendRedirect("Home.jsp");
                    }
                   
                }catch(Exception e)
                    {
                        System.out.println("Error in Connection");
                        e.printStackTrace();
                        
                                    
                    } 
                   
                   %>
                    
                     <div>
			<button id="myBtn">&uArr;</button>
          </div>      
<script>
        
    $(document).ready(function() {
				$(window).scroll(function() {
					if ($(this).scrollTop() > 10) {
						$('#myBtn').fadeIn();
					} else {
						$('#myBtn').fadeOut();

					}
				});
				$('#myBtn').click(function() {
					$('html, body').animate({
						scrollTop : 0
					}, 500);
					return false;
				});
			});

</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
