
<% 
       int count=0;
       try
        {
     
        String Name = request.getParameter("username");
        String Pwd = request.getParameter("password");
        
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","srinu","srinu");
        PreparedStatement stmt = con.prepareStatement("select EMAIL,PASS,LNAME from FACULTY_REG where EMAIL=? and PASS=?");
        stmt.setString(1,Name);
        stmt.setString(2,Pwd);
        ResultSet rs=stmt.executeQuery();
        %>
        <%
        if(!rs.next())
            {   
           %><script>alert('Invalid credentials');</script><%
            }
            else
            {
            do
            {
                
                String uname = rs.getString("EMAIL");
                String Password = rs.getString("PASS");
                String name = rs.getString("LNAME");
                session.setAttribute("Name",name);
           
                if(uname.equals(Name) && Password.equals(Pwd))
                {
                    response.sendRedirect("user_page.jsp");        
                }
               
            }while(rs.next());
            response.sendRedirect("login.jsp");         
        }             
                                                   
        }
        catch(Exception e)
        {
        System.out.println("Error in Connection");
        e.printStackTrace();
        } 
                   
 %>