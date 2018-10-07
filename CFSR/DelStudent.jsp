<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.util.Date" %>
<html>
<head><title align="center">Delete</title>
<link rel="stylesheet" href="CSS/myStyles.css">
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  
    <%@include file="Boot.jsp"%> </%@include>
<style>
    body{
        margin: auto;
        width: 100%;
    }    
	</style>
    
    <script>
        
function loadDoc(val1) {
     // var val = document.getElementsByName("cer"); 
    //var val2 = document.getElementsByName("grp"); 
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      
    if (this.readyState == 4 && this.status == 200) {
       // alert(xhttp.responseText);
     document.getElementById("grp_error").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "check_group.jsp?group="+val1, true);
  xhttp.send();
}
        
function loadNum(val) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
      
    if (this.readyState == 4 && this.status == 200) {
       //alert(xhttp.responseText);
     document.getElementById("num_error").innerHTML = this.responseText;
    }
  };
  xhttp.open("GET", "check_number.jsp?number="+val, true);
  xhttp.send();
}
            
     function data(val) {
      //var $id = $('#id').value;
      //$id.keyup(function(e) {
        if (val.length == 10) {
          // alert('Haiii');
            loadNum(val);
          //$(this.form).submit();
        }
      }
        
    </script>
</head>

<body>

<%@include file="facultyhead.jsp"%> <br><br> 
      <div id="tab" class="container">
        <div id="num_error" style="color: red;text-transform: capitalize;text-align: center;"></div> 
        <form class="navbar-form navbar-left" style="padding-left: 350pt;padding-top: 20pt" method="post">
        
        <div class="form-group">
            <input type="text" name="cer" maxlength="10" id="id" class="form-control" placeholder="Enter your roll number" onkeyup="data(this.value)" pattern="(?=.*\d)(?=.*[A-Z]).{10}">
        </div><br><br><br>
            <div id="grp_error" style="color: red;text-transform: capitalize;text-align: center;"></div> 
            <table>
            
            <tr>
                
                 <td> <select class="search_sel" name="grp" onchange="loadDoc(this.value)">
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
            </table><br><br>
            <input class="btn btn-primary" type="submit" name="btn" value="Submit" style="margin-left: 40pt">
        </form>
        </div>
   <%
      int count=0;
       try
        {
        String Name=(String)session.getAttribute("Grp");
        String Student_Id=request.getParameter("cer");
        String Group=request.getParameter("grp");
        //out.print(Name);
        //out.print(Group);
        DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        
        if(Name.equals(Group))
            {   PreparedStatement stmt = con.prepareStatement("delete from student where (Student_Id=? AND Social_Group=?");
                stmt.setString(1,Student_Id);
                stmt.setString(2,Group);
                //session.setAttribute("Sgrp",Group);
                //out.println("Hiiiiiiiiiiiiiiiiiiiiiiii");
                count =stmt.executeUpdate();
                //out.println(rs);
                if(count>0)
                {
                %><center>
                <img src="IMAGES/alert.png" style="border-radius: 20pt;height: 100pt;width: 100pt;">
                <h3 style="color: red">Deleted Successfully...</h3>
                </center><%
                }
                else
                {
                    %><center>
                <img src="IMAGES/alert.png" style="border-radius: 20pt;height: 100pt;width: 100pt;">
                <h3 style="color: red">No Records Found...</h3>
                </center><%         
                }
             }
            
                                    
                
                
                } catch(Exception e)
                   {
                   out.println("No files");
                    e.printStackTrace();
                   }
            %>
                
</body> 
</html>
