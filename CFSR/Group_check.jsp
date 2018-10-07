<%@ page import = "java.sql.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "com.db.*" %>


<%
       try
        {
        String Name=(String)session.getAttribute("Group");
        String Student_Id=request.getParameter("cer");
        String Group=request.getParameter("grp");
        DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        if(Name.equals(Group))
            {   PreparedStatement stmt = con.prepareStatement("delete from student where (Student_Id=? AND      Social_Group=?)");
                stmt.setString(1,Student_Id);
                stmt.setString(2,Group);
                int del=stmt.executeUpdate();
                //out.println(del);
                if(del>0)
                {
                %><center>
                <img src="IMAGES/alert.png" style="border-radius: 20pt;height: 100pt;width: 100pt;">
                <h3 style="color: red">Deleted Successfully...</h3>
                </center><%
                }
                else
                    {
                     %><center>
                        <img src="IMAGES/alert.png" style="border-radius: 20pt;height: 100pt;width: 100pt;">
                        <h4 style="color: red">You Are Not A Person To Delete Other group Students</h4>
                        </center><%
                    }
             }
                                    
                
                
                } catch(Exception e)
                   {
                   out.println("No files");
                    e.printStackTrace();
                   }
            %>