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
<head><title align="center">Student Info</title>
<link rel="icon" href="IMAGES/LOGO/CFSR1.png">
<link rel="stylesheet" href="CSS/myStyles.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<%@include file="Boot.jsp"%></%@include>
<style>
    body{
        width: 100%;
        margin: auto;
    } 
</style>
    <script>
     function pdf(){
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
        
    $(document).ready(function() {
    $('#example').DataTable();
} );
    </script>
</head>

<body>
<%@include file="facultyhead.jsp"%>
<br><br>
 <div class="col-sm-2" id="pri1">
        <button class="btn btn-primary" onclick="pdf()" style="border-radius: 5pt;margin: 10pt 0pt 0pt 0pt">Print</button>
      </div>
      
<div class="col-sm-1" id="pri2">
          <button class="btn btn-success" onclick="cl()" style="border-radius: 5pt;margin:10pt 0pt 0pt -100pt">EXCEL</button>
</div> 
      <div id="dvData">
          <h2>Activity Data Of All Students</h2>
        <table id="example" class="table table-hover table-bordered table-striped" style="margin-top: 5pt;width: 100%">
            <thead>
             <tr style="background-color: blueviolet;color: white;">
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
            <tr style="background-color: blueviolet;color: white;">
            <th>From</th>
            <th>To</th>
            </tr>
            </thead>
            
      
  <%
       try
        { 
        DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        Statement stmt = con.createStatement();
        String query = "select *from STUDENT";
        ResultSet rs=stmt.executeQuery(query);
     
        while(rs.next())
       {
            Date dat1=rs.getDate(6);
            Date dat2=rs.getDate(7);
            DateFormat df=new SimpleDateFormat("dd-MM-yyyy");
            String sda=df.format(dat1);
            String eda=df.format(dat2);
       %> <tbody>
          <tr>
            <td><% out.print(rs.getString(1)); %> </td>
            <td><% out.print(rs.getString(2)); %> </td>
            <td><% out.print(rs.getString(3)); %> </td>
            <td><% out.print(rs.getString(4)); %> </td>
            <td><% out.print(rs.getString(5)); %> </td>
            <td><% out.print(sda); %> </td>
            <td><% out.print(eda); %> </td>
            <td><% out.print(rs.getString(8)); %> </td>
            <td><% out.print(rs.getString(9)); %> </td>
            <td><% out.print(rs.getString(10)); %> </td>
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
                   
             %> </table> 
          </div>

 
</body>
</html>
