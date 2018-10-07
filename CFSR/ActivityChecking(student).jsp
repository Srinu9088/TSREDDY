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
<head><title align="center">Search</title>
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
 
    function PDF(){
        document.getElementById("fhead").style.visibility='hidden';
        document.getElementById("lis").style.visibility='hidden';
        /*document.getElementById("dvData").style.visibility='hidden';*/
        document.getElementById("tab").style.visibility='hidden';
        document.getElementById("pri").style.visibility='hidden'; 
        document.getElementById("pri1").style.visibility='hidden'; 
         $('#dvData').css({"position":"absolute","top":"0px"});
        window.print();
         $('#dvData').css({"position":"relative"});
        document.getElementById("fhead").style.visibility='visible';
        document.getElementById("lis").style.visibility='visible';
        document.getElementById("tab").style.visibility='visible';
        /*document.getElementById("dvData").style.visibility='visible';*/
        document.getElementById("pri").style.visibility='visible';  
        document.getElementById("pri1").style.visibility='visible';  
    }  
        
    function cl(){
        window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#dvData').html()));
    }
        
    </script>
	
</head>

<body>

<%@include file="studenthead.jsp"%> <br><br> 
    <!--<div class="col-sm-2" id="pri">
        <button class="btn btn-primary" onclick="PDF()" style="border-radius: 5pt;margin: 10pt 0pt 0pt 75pt">Print</button>
      </div>
      
       <div class="col-sm-1" id="pri1">
          <button class="btn btn-success" onclick="cl()" style="border-radius: 5pt;margin:10pt 0pt 0pt -40pt">EXCEL</button>
       </div> -->
 
   <%
       try
        {
        String Student_Id=request.getParameter("search");
      
       DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
         PreparedStatement stmt = con.prepareStatement("select *from student where Student_Id=?"); 
        stmt.setString(1,Student_Id);
        ResultSet rs=stmt.executeQuery();
        %>
       <%
      if(!rs.next())
         { 
         %><center>
           <img src="IMAGES/alert.png" style="border-radius: 20pt;height: 100pt;width: 100pt;">
           <h3 style="color: red">No Records Found?<br><br>Search For Another....</h3>
           </center><%
            }
        
          else{
             %>
       
       <br>
       <div id="dvData" class="container-fluid">
           <table class="table table-hover table-bordered" align=center>
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
             </tr><%
                     do{  
                        Date dat1=rs.getDate(6);
                        Date dat2=rs.getDate(7);
                        DateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                        String sda=df.format(dat1);
                        String eda=df.format(dat2);
                    %>
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
                   <%
                    }while(rs.next());
                }
               
                } catch(Exception e)
                   {
                   out.println("No files");
                      e.printStackTrace();
                   }
            %>
            </table>
                
</body> 
</html>
