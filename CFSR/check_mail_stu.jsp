<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<% 
       int count=0;
       try
        {
        DBScript db = new DBScript();
        String mail = request.getParameter("m");
        String msg = "";
         String a= "null";
        
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select EMAIL from STUDENT_REG where EMAIL=?");
        stmt.setString(1,mail);
        ResultSet rs = stmt.executeQuery();
       if(rs.next())
        {
         a = rs.getString(1);
        }
        if(a.equals(mail))
                msg = "Email is already existed";
        out.println(msg);
               
                
        }catch(Exception e){
   out.println(e);
   
   }
      
                   
 %>