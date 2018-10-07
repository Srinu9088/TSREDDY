<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.text.DateFormat" %>
<%@ page import = "java.util.Date" %>
<html>
<head><title align="center">Search</title>
<link rel="stylesheet" href="CSS/myStyles.css">
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <%@include file="Boot.jsp"%> </%@include>
<style>
    body{
        margin: auto;
        width: 100%;
    }    
	</style>
    <script>
 
    function PDF(){
        document.getElementById("fhead").style.visibility='hidden';
        document.getElementById("lis").style.visibility='hidden';
        /*document.getElementById("dvData").style.visibility='hidden';*/
        document.getElementById("tab").style.visibility='hidden';
        document.getElementById("pri").style.visibility='hidden'; 
        document.getElementById("pri1").style.visibility='hidden'; 
         $('#dvData').css({"position":"absolute","top":"0px"});
        window.print();
         $('#dvData').css({"position":"relative"});
        document.getElementById("fhead").style.visibility='visible';
        document.getElementById("lis").style.visibility='visible';
        document.getElementById("tab").style.visibility='visible';
        /*document.getElementById("dvData").style.visibility='visible';*/
        document.getElementById("pri").style.visibility='visible';  
        document.getElementById("pri1").style.visibility='visible';  
    }  
        
    function cl(){
        window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#dvData').html()));
    }
        
    </script>
	
</head>

<body>

<%@include file="facultyhead.jsp"%>     
        <div id="tab">
         <form method="post">
    	 <table class="search_tab" style="margin-top: 50pt">
             <tr>
                 <td style="padding-left: 110pt">YEAR:&nbsp;&nbsp;</td>
                 <td> <select class="search_sel" name="ye" onchange='if(this.value != 0) { this.form.submit(); }'>
                            <option hidden="true">Select Year</option>
                            <option value="2011-12">2011-12</option>
                            <option value="2012-13">2012-13</option>
                            <option value="2013-14">2013-14</option>
                            <option value="2014-15">2014-15</option>
                            <option value="2015-16">2015-16</option>
                            <option value="2016-17">2016-17</option>
                            <option value="2017-18">2017-18</option>
                            <option value="2018-19">2018-19</option>
                            <option value="2019-20">2019-20</option>
                     </select>
                 </td>
                 <td style="padding-left: 160pt">BRANCH:&nbsp;&nbsp;</td>
                 <td> <select class="search_sel" name="bra" onchange='if(this.value != 0) { this.form.submit(); }'>
                            <option hidden="true">Select Branch</option>
                            <option value="CSE">CSE</option>
                            <option value="IT">IT</option>
                            <option value="ECE">ECE</option>
                            <option value="EEE">EEE</option>
                            <option value="CIVIL">CIVIL</option>
                            <option value="CHEMICAL">CHEMICAL</option>
                            <option value="MECHANICAL">MECHANICAL</option>
                     </select>
                 </td>
                 <td style="padding-left: 200pt">SOCIAL GROUP:&nbsp;&nbsp;</td>
                 <td> <select class="search_sel" name="grp" onchange='if(this.value != 0) { this.form.submit(); }'>
                            <option hidden="true">Select Group</option>
                            <option value="NSS">NSS</option>
                            <option value="YES">YES</option>
                            <option value="HOH">HOH</option>
                            <option value="ROTARACT">ROTARACT</option>
                            <option value="WER4HELP">WER4HELP</option>
                            <option value="VIDYADAAN">VIDYADAAN</option>
                            <option value="OTHERS">OTHERS</option>
                            
                    </select>
                 </td>
             </tr>
        </table> 
             <!--<table>
            <tr></tr>
             <tr>
             <td align=center style="padding-left: 150pt"><input type="submit" class="search_sub" value="Submit"></td>
             </tr>
             </table>-->
    </form>  
     </div>

        
   <%
       try
        {
        String Year_Admitted=request.getParameter("ye");
        String Branch=request.getParameter("bra");
        String Social_Group=request.getParameter("grp");
      
        DBScript db = new DBScript();
        Class.forName(db.driverName());
        Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
        PreparedStatement stmt = con.prepareStatement("select *from student where (year_admitted=? OR branch=? OR social_group=?)"); 
        stmt.setString(1,Year_Admitted);
        stmt.setString(2,Branch);
        stmt.setString(3,Social_Group);
        ResultSet rs=stmt.executeQuery();
        %>
        <%
      if(!rs.next())
         { 
         %><center>
           <img src="IMAGES/alert.png" style="border-radius: 20pt;height: 100pt;width: 100pt;">
           <h3 style="color: red">No Records Found?<br><br>Search For Another....</h3>
           </center><%
            }
        
          else{
             %>
    <div class="col-sm-2" id="pri">
    <button class="btn btn-primary" onclick="PDF()" style="border-radius: 5pt;margin: 10pt 0pt 0pt 0pt">Print</button>
    </div>
      
    <div class="col-sm-1" id="pri1">
    <button class="btn btn-success" onclick="cl()" style="border-radius: 5pt;margin:10pt 0pt 0pt -100pt">EXCEL</button>
    </div> 
    <br>
    <div id="dvData" class="container-fluid">
    <table class="table table-hover table-bordered table-striped" align=center>
                <tr style="background-color: blueviolet;color: white;">
                <th rowspan="2">Year Admitted</th>
                <th rowspan="2">Social Group</th>
                <th rowspan="2">Branch</th>
                <th rowspan="2">Student_Id</th>
                <th rowspan="2">Activity Description</th>
                <th colspan="2">Dates</th>
                <th rowspan="2">Number Of Hours</th>
                <th rowspan="2">Level Of Participation</th>
                <th rowspan="2">Place Of Description</th>
                </tr>
             <tr style="background-color: blueviolet;color: white;">
             <th>From</th>
             <th>To</th>
             </tr><%
      
                    do
                    {
                        
                        Date dat1=rs.getDate(6);
                        Date dat2=rs.getDate(7);
                        DateFormat df=new SimpleDateFormat("dd-MM-yyyy");
                        String sda=df.format(dat1);
                        String eda=df.format(dat2);
                    %>
              <tr style="color: black">
                    <td><% out.print(rs.getString(1)); %> </td>
                    <td><% out.print(rs.getString(2)); %> </td>
                    <td><% out.print(rs.getString(3)); %> </td>
                    <td><% out.print(rs.getString(4)); %> </td>
                    <td><% out.print(rs.getString(5)); %> </td>
                    <td><% out.print(sda); %> </td>
                    <td><% out.print(eda); %> </td>
                    <td><% out.print(rs.getString(8)); %> </td>
                    <td><% out.print(rs.getString(9)); %> </td>
                    <td><% out.print(rs.getString(10)); %> </td>
                </tr> 
                   <%
                    }while(rs.next());
                }
               
                } catch(Exception e)
                   {
                   out.println("No files");
                      e.printStackTrace();
                   }
            %>
            </table>
                
</body> 
</html>
