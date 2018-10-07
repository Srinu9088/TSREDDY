<%@ page import = "java.sql.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.util.Date" %>
<html>
<head>
    <title>Home page</title>
    <link rel="icon" href="IMAGES/srasys.png">
    <script src="JS/jquery-1.11.3.min.js"></script>
    <link rel=stylesheet href="CSS/animate.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</head>
<style>
.sidenav {
    height: 100%;
    width: 200px;
    position: fixed;
    z-index: 1;
    top: 52;
    left: 0;
    background-color: blueviolet;
    overflow-x: hidden;
    padding-top: 35px;
}

.sidenav a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 20px;
    color: white;
    display: block;
}

.sidenav a:hover {
    color: #111;
}

.main {
    margin-left: 300px; /* Same as the width of the sidenav */
    font-size: 25px; /* Increased text to enable scrolling */
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
}
    
.affix {
      top: 0;
      width: 100%;
      z-index: 9999 !important;
  }

  .affix + .container-fluid {
      padding-top: 50px;
  }
    </style>
<body>    
     <script src="JS/wow.js"></script>
              <script>
              new WOW().init();
             </script>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="0">
  <div class="container-fluid">
    <form class="navbar-form">
      <div class="form-group col-sm-9">
        <input type="text" class="form-control" placeholder="Search" name="search" style="width: 100%">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    <a href="Home.jsp" style="margin-left: 40pt;color: white;font-size: 15pt">Back</a>
    <a href="logout.jsp" style="margin-left: 40pt;color: white;font-size: 15pt">Logout</a>
    </form>
  </div>
</nav>
 <div class="sidenav">
  <a href="Assignments.jsp">Assginments</a>
  <a href="Lesson.jsp">Lesson Planner</a>
</div><br>
<div class="main container-fluid">
    <div class="col-sm-2"><input type="radio" name="pending" value="Pending">Pending</div>
    <div class="col-sm-4"><input type="radio" value="Submitted">Submitted</div>
</div><br>
    <%
       try
        { 
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinu","srinu");
        Statement stmt = con.createStatement();
        String query = "select *from TBL_ASSIGNMENTS";
        ResultSet rs=stmt.executeQuery(query);
       
            while(rs.next())
            {
                Date dat1=rs.getDate(6);
                DateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                String sda=df.format(dat1);
                
                %>
<div class="main container-fluid">
    <div class="col-sm-4" style="background-color: aquamarine;" align=center><b>Due</b><br><% out.print(sda); %></div>
            <div class="col-sm-6" style="background-color: blueviolet;color: white" align=center><b style="color: black">Number</b><br><% out.print(rs.getString(3)); %></div>
    
</div><br>
        <%
            }
            
        }
        
        catch(Exception e)
        {
        out.println("Error in Connection");
        e.printStackTrace();
        } 
                   
    %> 
</body>
</html>