<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<% 
       int x=0;
    
       try
        {
     
        String mail = request.getParameter("uname");
        String pwd = request.getParameter("pass");
        String msg = "";
        
         DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select EMAIL, PASS, LNAME, SOCIAL_GROUP from FACULTY_REG where EMAIL=? AND PASS=?");
        stmt.setString(1,mail);
        stmt.setString(2,pwd);
        
        ResultSet rs= stmt.executeQuery();
        while(rs.next())
            {   
                String uname = rs.getString("EMAIL");
                String Password = rs.getString("PASS");
                 String name = rs.getString("LNAME");
                 session.setAttribute("Name",name);
                String sgrp = rs.getString("SOCIAL_GROUP");
                 session.setAttribute("Grp",sgrp);
                
                if(uname.equals(mail) && Password.equals(pwd))
                    {
                        x=1;
                        
                        break;
                    }
    
            } 
   
            if(x==1)
                //response.sendRedirect("user_page.jsp");
                msg = "success";
            else
                msg = "Invalid Username or Password";
            out.print(msg);
                
        }catch(Exception e){
                out.print(e);
   }
      
                   
 %>