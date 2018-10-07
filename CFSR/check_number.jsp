<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<% 
       try
        {
        DBScript db = new DBScript();
        String Num = request.getParameter("number");
        String msg = "";
        String a = "null";
       // out.print("hiiiiiiiiii");
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select Student_Id from student where Student_Id=?");
        stmt.setString(1,Num);
        //out.println("Hiii");
       ResultSet rs = stmt.executeQuery();
       if(rs.next())
        {
         a = rs.getString(1);
        }
        if(a.equals(Num))
                msg = "Record Found";
        else
                msg = "Record Not Found Choose Another";
        out.print(msg);
               
                
        }
        catch(Exception e){
   out.println(e);
   }
      
                   
 %>