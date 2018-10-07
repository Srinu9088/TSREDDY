<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<% 
       int count=0;
       try
        {
        DBScript db = new DBScript();
        String Num = request.getParameter("n");
        String msg = "";
        String a = "null";
        
        
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select Student_Id from VOLUNTEER where Student_Id=?");
        stmt.setString(1,Num);
        ResultSet rs = stmt.executeQuery();
       if(rs.next())
        {
         a = rs.getString(1);
        }
        if(a.equals(Num))
                msg = "";
        else
                msg = "Yes";
        out.print(msg);
               
                
        }
        catch(Exception e){
    
   }
      
                   
 %>