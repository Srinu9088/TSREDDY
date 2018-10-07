<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<% 
       try
        {
         DBScript db = new DBScript();
        String Name=(String)session.getAttribute("Grp");
        //String GRP=(String)session.getAttribute("Sgrp");
        String Grp = request.getParameter("group");
        String msg = "";
        String a = "null";
        
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select Social_Group from student where Social_Group=?");
        stmt.setString(1,Grp);
        
        ResultSet rs = stmt.executeQuery();
       if(rs.next())
        {
         a = rs.getString(1);
        }
        if(Name.equals(Grp))
                msg = "";
        else
                msg = "You Are Not A Right Person to delete Other Group Records Because You Are Belongs To "+Name; 
        out.println(msg);
               
                
        }catch(Exception e){
   
   }
      
                   
 %>