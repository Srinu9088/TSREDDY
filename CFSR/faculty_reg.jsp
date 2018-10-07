<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<html>
<head><title>Registration</title>
<link rel="icon" href="IMAGES/LOGO/CFSR1.png">
<link rel="stylesheet" href="CSS/myStyles.css">
    <%@include file="Boot.jsp"%></%@include>
     <link rel=stylesheet href="CSS/animate.css">
<style>
    body{
        margin: auto;
        width: 100%;
    }
</style>

    <script>
    function succ(){
        alert("Registered Successfully and press OK to go to Home page");
    }
      function fvalid()
      {
      
         if( document.fForm.fname.value == "" )
         {
            alert( "Please provide your First Name!" );
            document.fForm.fname.focus() ;
            return false;
         }
         
         if( document.fForm.lname.value == "" )
         {
            alert( "Please provide your Last Name!" );
            document.fForm.lname.focus() ;
            return false;
         }
          
           if( document.fForm.grp.value == "-1" )
         {
            alert( "Please provide your Social Group!" );
            document.fForm.grp.focus() ;
            return false;
         }
          var emailID = document.fForm.email.value;
         atpos = emailID.indexOf("@");
         dotpos = emailID.lastIndexOf(".");
         
         if (atpos < 1 || ( dotpos - atpos < 2 )) 
         {
            alert("Please enter correct email ID")
            document.fForm.email.focus() ;
            return false;
         }
          if( document.fForm.pwd.value == "" && document.sForm.mobile.value.length <= 8 )
         {
            alert( "Please provide your password with minimum 8 characters!" );
            document.pwd.fname.focus() ;
            return false;
         }
          
        if( document.fForm.mobile.value == "" ||
           isNaN( document.fForm.mobile.value) ||
           document.fForm.mobile.value.length != 10 )
        {
            alert( "Please provide a Mobile No in the format 123." );
            document.fForm.mobile.focus() ;
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
  xhttp.open("GET", "check_mail_fac.jsp?m="+value, true);
  xhttp.send();
}
    </script>
</head>

<body>
   
    <%@include file="head.jsp"%>
        <br>
      <center><label style="color: green;font-size: 25pt">Faculty Registration:</label>
        <div id="mail_error" style="color: red;text-transform: capitalize"></div> 
    </center><br><br>
	   <div>
       <center><form name="fForm" method="post" onsubmit="return(fvalid() && succ());">
        <div class="wow zoomIn register">
            <label style="font-size: 20pt">Please Enter Your Details</label>
        <table  width="500px" height="350px">
           
            <tr>
                <td><label> First Name</label></td>
                <td> <input type=text name=fname autofocus pattern="[A-Za-z\s]+" title="Enter Characters Only"></td>
            </tr>
            <tr>
                <td><label>Last Name</label></td>
                <td> <input type=text name=lname pattern="[A-Za-z\s]+" title="Enter Characters Only"></td>
            </tr>
            <tr>
                <td><label>Social Group</label></td>
                 <td> <select class="search_sel" name="grp">
                            <option hidden="true">--------Select Group--------</option>
                            <option value="NSS">NSS</option>
                            <option value="YES">YES</option>
                            <option value="HOH">HOH</option>
                            <option value="ROTARACT">ROTARACT</option>
                            <option value="WER4HELP">WER4HELP</option>
                            <option value="VIDYADAAN">VIDYADAAN</option>
                            <option value="OTHERS">OTHERS</option>
                            
                    </select>
                 </td>
            
            </tr>
                     
             <tr>
                 <td><label> Email</label></td>
                <td> <input type=email name=email onkeyup="loadDoc(this.value)"></td>
            </tr>
            <tr>
                <td><label> Password</label></td>
                <td> <input type=password name=pwd></td>
            </tr>
            <tr>
                <td><label>Mobile</label></td>
                <td><input type=mobile name="mobile"></td>
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
                String Group = request.getParameter("grp");    
               String Email = request.getParameter("email");
               String Pass = request.getParameter("pwd");
               String Mobile = request.getParameter("mobile");
               try
               {
                int count=0;  
                Class.forName(db.driverName());
                Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
                Statement stmt = con.createStatement();
                count=stmt.executeUpdate("insert into FACULTY_REG values('"+FName+"','"+LName+"','"+Group+"','"+Email+"','"+Pass+"',"+Mobile+")");
                   
                   
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
