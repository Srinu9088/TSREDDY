<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<html>
<head><title align="center">Student Info</title>
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
        document.getElementById("header").style.visibility='hidden';
        /*document.getElementById("lis").style.visibility='hidden';*/
        document.getElementById("pr1").style.visibility='hidden';
         document.getElementById("pr2").style.visibility='hidden';
        $('#data').css({"position":"absolute","top":"0px"});
        window.print();
        $('#data').css({"position":"relative"});
        document.getElementById("header").style.visibility='visible';
        /*document.getElementById("lis").style.visibility='visible';*/
        document.getElementById("pr1").style.visibility='visible';
        document.getElementById("pr2").style.visibility='visible';
    }  
    function cl(){
        window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#dvData').html()));
    }
    </script>
</head>

<body>
<%@include file="head.jsp"%><br><br>
    
  <% 
       try
        { 
        String Student_Id=request.getParameter("search");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinu","srinu");
        PreparedStatement stmt = con.prepareStatement("select *from VOLUNTEER where Student_Id=?");
        stmt.setString(1,Student_Id);
        ResultSet rs=stmt.executeQuery();
        
        %>
      <div class="col-sm-2" id="pr1">
        <button onclick="myFunction()" style="border-radius: 5pt;background-color: greenyellow;margin: 10pt 0pt 0pt 92pt">PDF</button>
      </div>
      
      <div class="col-sm-1" id="pr2">
          <button onclick="cl()" style="border-radius: 5pt;background-color: greenyellow;margin:10pt 0pt 0pt -20pt">EXCEL</button>
      </div> 
      <div id="data">
        <table class="activity_lis"  border="1" align=center id="stab" style="margin-top: 5pt">
             <tr>
                <th>Year Enroll</th>
                <th>Social Group</th>
                <th>Branch</th>
                <th>Class</th>
                <th>Student_Id</th>
                <th>Student Name</th>
                <th>Father Name</th>
                <th>Category</th>
            </tr>   
      
      <%
        while(rs.next())
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
          </tr>
          
          
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
