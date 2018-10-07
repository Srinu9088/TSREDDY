<%@ page import = "java.sql.*" %>
<% 
       int count=0;
       try
        {
     
        String Mail = request.getParameter("username");
        String Pwd = request.getParameter("password");
        String msg = "";
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinu","srinu");
        PreparedStatement stmt = con.prepareStatement("select EMAIL, PASS from FACULTY_REG where EMAIL=? AND PASS=?");
        stmt.setString(1,Mail);
        stmt.setString(2,Pwd);
        count = stmt.executeUpdate();
        if(count > 0)
                msg = "ok";
        out.print(msg);
            
               
                
        }catch(Exception e){
   
   }
      
                   
 %>