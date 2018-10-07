<%@ page import = "java.sql.*, java.util.*" %>
<html>
<head><title align="center">Login</title>
 <link rel="icon" href="IMAGES/srasys.png">
<script src="jquery-1.11.3.min.js"></script>
    <link rel=stylesheet href="CSS/animate.css">
    <link rel="stylesheet" href="CSS/myStyles.css">
    <%@include file="Boot.jsp"%></%@include>
<style>
    body{
        margin: auto;
        width: 100%;
        background-color: lightskyblue;
    }
</style>
<script src="JS/wow.js"></script>
              <script>
              new WOW().init();
             </script>  
    
</head>

<body>
            <center>
            <div style="padding-top: 50pt">
                <img class="wow zoomIn" src="IMAGES/srasys.png">
                </div>
            <div>
                <h3 class="wow slideInRight" style="text-transform: uppercase">Welcome To Srasys</h3>
            </div><br><br><br>
            <div class="wow sildeInUp">
            <form method="post" name="loginform">  
			 <table height="180pt" width="400pt">
			  <tr>
                  <td><label>UserName:</label></td>
                  <td><input type="text" size=30 name="username" required autofocus placeholder="Enter your email"></td>
            </tr>
                  
			   <tr>
                   <td><label>Password:</label></td>
                   <td><input type="password" size=30 name="password" required placeholder="Enter password"></td>
                </tr>
                
				<tr>
                    <td colspan=2 align="center"><input class="login_sub" type="submit" value="LOGIN"></td>
                </tr>
                
                </table>
                     </form>
                </div>
            </center>
    <% 
       int count=0;
       try
        {
       boolean flag=false;
        String Name = request.getParameter("username");
        String Pwd = request.getParameter("password");
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinu","srinu");
        PreparedStatement stmt = con.prepareStatement("select EMAIL,PASS,LNAME,SOCIAL_GROUP from FACULTY where EMAIL=? and PASS=?");
        stmt.setString(1,Name);
        stmt.setString(2,Pwd);
        ResultSet rs=stmt.executeQuery();
        
        while(rs.next())
            {
                String Grp = rs.getString("SOCIAL_GROUP");
                String uname = rs.getString("EMAIL");
                String Password = rs.getString("PASS");
                String name = rs.getString("LNAME");
                session.setAttribute("Name",name);
                session.setAttribute("Group",Grp);
                if(uname.equals(Name) && Password.equals(Pwd))
                    {
                        response.sendRedirect("Home.jsp");
                    }
    
            } 
       
                                                   
        }
        catch(Exception e)
        {
        e.printStackTrace();
        } 
                   
 %>
 
</body>
</html>
