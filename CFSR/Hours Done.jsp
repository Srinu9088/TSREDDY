<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.util.Date" %>
<html>
<head><title align="center">Search</title>
<link rel="stylesheet" href="CSS/myStyles.css">
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <%@include file="Boot.jsp"%> </%@include>
<style>
    body{
        margin: 0;
        width: 100%;
        color: #3498DB;
    }    
	</style>
    <script>
 
    function PDF(){
        document.getElementById("header").style.visibility='hidden';
       // document.getElementById("dvData").style.visibility='hidden';
        document.getElementById("tab").style.visibility='hidden';
        document.getElementById("pri").style.visibility='hidden'; 
        document.getElementById("pri1").style.visibility='hidden'; 
        $('#dvData').css({"position":"absolute","top":"0px"});
        window.print();
        $('#dvData').css({"position":"relative"});
        document.getElementById("header").style.visibility='visible';
        /*document.getElementById("dvData").style.visibility='visible';*/
        document.getElementById("tab").style.visibility='visible';
        document.getElementById("pri").style.visibility='visible';  
        document.getElementById("pri1").style.visibility='visible';  
    }  
        
    function cl(){
        window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#dvData').html()));
    }
        
     $(function() {
      var $id = $('#sID');
      $id.keyup(function(e) {
        if ($id.val().length >= 10) {
          $(this.form).submit();
        }
      });
    });
    </script>
	
</head>

<body>
    <%@include file="head.jsp"%> 
        <div id="tab" class="container">
        <form class="navbar-form navbar-left" style="padding-left: 350pt;padding-top: 20pt" method="post">
        <div class="form-group">
            <input type="text" id="sID" name=cer maxlength="10" class="form-control" placeholder="Enter your roll number" pattern="(?=.*\d)(?=.*[A-Z]).{10,}">
        </div>
        </form>
        </div>
 <!--<div class="col-sm-2" id="pri">
        <button class="btn btn-primary" onclick="PDF()" style="border-radius: 5pt;margin: 10pt 0pt 0pt 40pt">PDF</button>
      </div>
      
      <div class="col-sm-1" id="pri1">
          <button class="btn btn-success" onclick="cl()" style="border-radius: 5pt;margin:10pt 0pt 0pt -80pt">EXCEL</button>
      </div> 
<div id="dvData">
  <table class="search_lis table-bordered" align=center style="width: 90%">
                <tr style="background-color: #3498DB">
                <th rowspan="2">Year Admitted</th>
                <th rowspan="2">Social Group</th>
                <th rowspan="2">Branch</th>
                <th rowspan="2">Student_Id</th>
                <th rowspan="2">Activity Description</th>
                <th colspan="2">Dates</th>
                <th rowspan="2">Number Of Hours</th>
                <th rowspan="2">Level Of Participation</th>
                <th rowspan="2">Place Of Description</th>
                </tr>
             <tr style="background-color: #3498DB">
             <th>From</th>
             <th>To</th>
             </tr>
        -->
   <%
       try
        {
        String Student_Id=request.getParameter("cer");
      
        DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select *from student where Student_Id=?");
        PreparedStatement stmt1 = con.prepareStatement("select SUM(NUMBER_OF_HOURS) from student where Student_Id=?");
        stmt.setString(1,Student_Id);
        stmt1.setString(1,Student_Id);
        ResultSet rs=stmt.executeQuery();
        
        ResultSet rs1=stmt1.executeQuery();
       
        %>
        <%
      if(!rs.next())
         { 
         %><center>
           <img src="IMAGES/alert.png" style="border-radius: 20pt;height: 100pt;width: 100pt;">
           <h3 style="color: red">No Records Found?<br><br>Search For Another.......</h3>
           </center>
            <%
        }
        
        else
        {
           
             %>
        <div class="col-sm-2" id="pri">
        <button class="btn btn-primary" onclick="PDF()" style="border-radius: 5pt;margin: 10pt 0pt 0pt 0pt">PDF</button>
      </div>
      
      <div class="col-sm-1" id="pri1">
          <button class="btn btn-success" onclick="cl()" style="border-radius: 5pt;margin:10pt 0pt 0pt -100pt">EXCEL</button>
      </div> 
        <div id="dvData">
        <h2>Number Of Hours Done By Particular Student</h2>
        <table class="table table-hover table-bordered" align=center style="width: 98%">
                <tr style="background-color: blueviolet;color: white;">
                <th rowspan="2">Year Admitted</th>
                <th rowspan="2">Social Group</th>
                <th rowspan="2">Branch</th>
                <th rowspan="2">Student_Id</th>
                <th rowspan="2">Activity Description</th>
                <th colspan="2" style="text-align: center">Dates</th>
                <th rowspan="2">Number Of Hours</th>
                <th rowspan="2">Level Of Participation</th>
                <th rowspan="2">Place Of Description</th>
                </tr>
             <tr style="background-color: blueviolet;color: white;">
             <th>From</th>
             <th>To</th>
             </tr>
            <%
                    
                    do
                    {
                    %>
              <tr>
                    <td><% out.print(rs.getString(1)); %> </td>
                    <td><% out.print(rs.getString(2)); %> </td>
                    <td><% out.print(rs.getString(3)); %> </td>
                    <td><% out.print(rs.getString(4)); %> </td>
                    <td><% out.print(rs.getString(5)); %> </td>
                    <td><% out.print(rs.getString(6)); %> </td>
                    <td><% out.print(rs.getString(7)); %> </td>
                    <td><% out.print(rs.getString(8)); %> </td>
                    <td><% out.print(rs.getString(9)); %> </td>
                    <td><% out.print(rs.getString(10)); %> </td>
                </tr> 
                   <%
                }while(rs.next()); 
                    while(rs1.next())
                      {
                      %>
                       <th colspan="7">Total Number Of Hours</th>
                       <td colspan="3" style="font-weight: bold"><% out.print(rs1.getString(1)); %></td>
                       <%
                      }
                    }
                }
                catch(Exception e)
                   {
                    out.println(e);
                      e.printStackTrace();
                   }
            %>
            </table>
                       </div>
       
                
</body> 
</html>
