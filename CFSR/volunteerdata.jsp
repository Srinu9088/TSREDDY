<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<html>
<head><title align="center">Volunteer Info</title>
<link rel="icon" href="IMAGES/LOGO/CFSR1.png">
<link rel="stylesheet" href="CSS/myStyles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <%@include file="Boot.jsp"%></%@include>
<style>
    body{
        margin: auto;
        width: 100%;
    }  
   
</style>
    <script>
     function myFunction(){
        document.getElementById("fhead").style.visibility='hidden';
        document.getElementById("lis").style.visibility='hidden';
        document.getElementById("pri1").style.visibility='hidden';
         document.getElementById("pri2").style.visibility='hidden';
        $('#dvData').css({"position":"absolute","top":"0px"});
        window.print();
        $('#dvData').css({"position":"relative"});
        document.getElementById("fhead").style.visibility='visible';
        document.getElementById("lis").style.visibility='visible';
        document.getElementById("pri1").style.visibility='visible';
        document.getElementById("pri2").style.visibility='visible';
    }  
    function cl(){
        window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#dvData').html()));
    }
    </script>
</head>

<body>
<%@include file="facultyhead.jsp"%><br><br>
    
  <% 
       try
        { 
        DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        Statement stmt = con.createStatement();
        String query = "select *from VOLUNTEER";
        ResultSet rs=stmt.executeQuery(query);
        %>
      <div class="col-sm-2" id="pri1">
        <button type="button" class="btn btn-primary" onclick="myFunction()" style="border-radius: 5pt;margin: 10pt 0pt 0pt 75pt">Print</button>
      </div>
      
      <div class="col-sm-1" id="pri2">
          <button type="button" class="btn btn-success" onclick="cl()" style="border-radius: 5pt;margin:10pt 0pt 0pt -20pt">EXCEL</button>
      </div> 
      <div id=dvData class="container">
          <h2>Volunteer Data Of All Students</h2>
        <table class="table table-hover table-bordered table-striped" align=center id="stab" style="margin-top: 5pt;">
            <thead>
             <tr style="background-color: blueviolet;color: white;">
                <th>Year Enroll</th>
                <th>Social Group</th>
                <th>Branch</th>
                <th>Class</th>
                <th>Student_Id</th>
                <th>Student Name</th>
                <th>Father Name</th>
                <th>Category</th>
            </tr>
            </thead>
      
      <%
        while(rs.next())
       {
       %><tbody>
          <tr>
            <td><% out.print(rs.getString(1)); %> </td>
            <td><% out.print(rs.getString(2)); %> </td>
            <td><% out.print(rs.getString(3)); %> </td>
            <td><% out.print(rs.getString(4)); %> </td>
            <td><% out.print(rs.getString(5)); %> </td>
            <td><% out.print(rs.getString(6)); %> </td>
            <td><% out.print(rs.getString(7)); %> </td>
            <td><% out.print(rs.getString(8)); %> </td>            
          </tr>
          </tbody>
          
          <%
           
        }
        }
        catch(Exception e)
        {
        out.println("Error in Connection");
        e.printStackTrace();
        } 
                   
             %> 
    </table>   
 
</body>
</html>
