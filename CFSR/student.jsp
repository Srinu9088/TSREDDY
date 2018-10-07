<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.db.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>

<html>
<head><title align="center">Student</title>
<script src="jquery-1.11.3.min.js"></script>
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
<link rel="stylesheet" href="CSS/myStyles.css">
    <%@include file="Boot.jsp"%></%@include>
<style>
    body{
        margin: auto;
        width: 100%;
    }  
    b{
        color: black;
    }
</style>
    <script type="text/javascript">
    function success(){
        alert("Successfully Submitted and press OK go to student page");
    }
    
    function validate(){
        
          if( document.myForm.year.value == "-1"  ||
            document.myForm.year.value == "2018-19" || document.myForm.year.value == "2019-20")
         {
            alert( "Please provide your correct Year!" );
            document.myForm.year.focus() ;
            return false;
         }
        
          if( document.myForm.group.value == "-1" )
         {
            alert( "Please provide your Social Group!" );
            document.myForm.group.focus() ;
            return false;
         }
        
          if( document.myForm.branch.value == "" )
         {
            alert( "Please provide your Branch!" );
            document.myForm.branch.focus() ;
            return false;
         }
        
          if( document.myForm.ad.value == "" )
         {
            alert( "Please provide your Activity Description!" );
            document.myForm.ad.focus() ;
            return false;
         }
        
            
          if( document.myForm.from.value == "" )
         {
            alert( "Please provide your Starting Date!" );
            document.myForm.from.focus() ;
            return false;
         }
        
        
          if( document.myForm.to.value == "" )
         {
            alert( "Please provide your Ending Date!" );
            document.myForm.to.focus() ;
            return false;
         }
        
        
          if( document.myForm.noh.value == "" )
         {
            alert( "Please provide your Number Of Hours Work!" );
            document.myForm.noh.focus() ;
            return false;
         }
        
        
          if( document.myForm.level.value == "-1" )
         {
            alert( "Please provide your Level Of Participation!" );
            document.myForm.level.focus() ;
            return false;
         }
        
        
          if( document.myForm.place.value == "-1" )
         {
            alert( "Please provide your Level Of Participation!" );
            document.myForm.place.focus() ;
            return false;
         }
    
         return( true );
    }
    </script>
    <script>
    function myFunction(){
        
         var s= document.myForm.sid.value;
        if( s == "" )
         {
            alert( "Please provide your Student Id!" );
            document.myForm.sid.focus() ;
            return false;
         }
          if(s.charAt(0)>1 ||s.charAt(1)>=9 )
          {
                alert("Please Enter Valid Roll Number");
                document.myForm.sid.focus();
                return false;
            }
        
        var str = document.getElementById("myId").value;
        var last3 = str.substr(7,10);        
        
        var msg;
        if(str.charAt(2)==1 && str.charAt(3)==3)
           {
           if((str.charAt(4)==1 || str.charAt(4)==5) && (str.charCodeAt(5)==65 || str.charCodeAt(5)==97))
               {
                   var code = last3.charAt(0);
                   var it = str.charAt(6); 
                   
                   if(it==0 && code==1) msg = "CIVIL";
                   else if(it==0 && code==2) msg = "EEE";
                   else if(it==0 && code==3) msg = "MECHANICAL";
                   else if(it==0 && code==4) msg = "ECE";
                   else if(it==0 && code==5) msg = "CSE";
                   else if(it==0 && code==8) msg = "CHEMICAL";
                   else if(it==1 && code==2) msg = "IT";
                   else alert("Please Enter Correct Number");                   
                   $('#branch').val(msg);
                   
                   //document.getElementById("myDiv").innerHTML = msg;
                                     
               }
           else{
                alert("Invalid course code or Type of course");
            }
    }
        else{
            alert("Please enter correct course code ");
        }
    }
    $(function() {
      var $id = $('#myId');
      $id.keyup(function(e) {
        if ($id.val().length >= 10) {
          myFunction();
        }
      });
    }); 
        
    /*$(document).ready(function(){
    $("#sub").click(function(){
        success();
    });
});*/
    </script>
</head>

<body>
<%@include file="studenthead.jsp"%>
        <br><br>
        <div align=center><form name="myForm" method="post" onsubmit="return(validate() && success());">
			 <div class="nss_dep" style="height: 350pt;width: 480pt;padding: 10pt">
			  <div class="row">
                   <div class="col-sm-4">Year        :</div>
                 <div class="col-sm-4"> <select class="nss_sel" name="year" style="width: 150pt">
                            <option value="-1" selected>-----------Select Year------------</option>
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
                 </div>
                 </div>
                 
                 <div class="row"><br>
                  <div class="col-sm-4">Social Group :</div>
                 <div class="col-sm-4"><select class="nss_sel" name="group" style="width: 150pt">
                            <option value="-1" selected>------------Select Group------------</option>
                            <option value="NSS">NSS</option>
                            <option value="YES">YES</option>
                            <option value="HOH">HOH</option>
                            <option value="ROTARACT">ROTARACT</option>
                            <option value="WER4HELP">WER4HELP</option>
                            <option value="VIDYADAAN">VIDYADAAN</option>
                             <option value="OTHERS">OTHERS</option>
                    </select>
                 </div>
                 </div>
                 
                 <div class="row"><br>
                     <div class="col-sm-4">Student_Id    :</div>
                    <div class="col-sm-4"><input type="text" id="myId" size=21 name="sid" pattern="(?=.*\d{5}).{10,}"></div>
                 </div>
                 
                 <div class="row"><br>
                 <div class="col-sm-4">Branch        :</div>
                 <div class="col-sm-4"><input type="text" id="branch" name="branch" readonly> 
                     <!--<select class="nss_sel" name="branch" style="width: 150pt">
                            <option value="-1" selected>------------Select Branch------------</option>
                            <option value="CSE">CSE</option>
                            <option value="IT">IT</option>
                            <option value="ECE">ECE</option>
                            <option value="EEE">EEE</option>
                            <option value="CIVIL">CIVIL</option>
                            <option value="CHMICAL">CHEMICAL</option>
                            <option value="MECHANICAL">MECHANICAL</option>
                     </select>-->
                 </div>
                 </div>
                 
                <div class="row"> <br>               
                    <div class="col-sm-4">Activity Description   :</div>
                    <div class="col-sm-4"><input type="text" size=21 name="ad" pattern="[A-Za-z\s]+" title="Enter Characters Only"></div>
                </div>
                 
                <div class="row"><br>
                    <div class="col-sm-4">Dates From :</div>
                    <div class="col-sm-4"><input type="date" name="from">&nbsp;&nbsp;&nbsp;To</div>
                    <div class="col-sm-4"><input type="date" name="to"></div>
                </div>
                 
                <div class="row"><br>
                    <div class="col-sm-4">Number Of Hours    :</div>
                    <div class="col-sm-4"><input type="number" size=30 name="noh"></div>
                </div>
                 
                <div class="row"><br>
                    <div class="col-sm-4">Level Of Participation:</div>
                <div class="col-sm-4"><select class="sel" name="level">
                            <option value="-1" selected>Select Level Of Participation</option>
                            <option value="College">College</option>
                            <option value="District">District</option>
                            <option value="State">State</option>
                            <option value="National">National</option>
                    </select>
                </div>
                </div>
                <div class="row"><br>
                    <div class="col-sm-4">Place Of Participation:</div>
                    <div class="col-sm-4"><input type="text" size=21 name="place" pattern="[A-Za-z\s]+" title="Enter Characters Only"> </div>
                </div>
			   <div class="row"><br>
                   <div class="col-sm-12"align="center"><input class="nss_sub" id="sub" type="submit" value="SUBMIT"></div>
                </div>
                </div>
            </form>
            </div>
        
                      
            <% 
               String Year_Admitted = request.getParameter("year");
               String Social_Group = request.getParameter("group");
               String Branch = request.getParameter("branch");
               String Student_Id = request.getParameter("sid");
               String Activity_Description = request.getParameter("ad");
               String Start_Date = request.getParameter("from");
               String End_Date = request.getParameter("to");
               String Number_Of_Hours = request.getParameter("noh");
               String Level_Of_Participation = request.getParameter("level");
               String Place_Of_Participation = request.getParameter("place");
              
               try
               {
                int count=0;  
               DBScript db = new DBScript();
               Class.forName(db.driverName());
                 Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
                PreparedStatement stmt = con.prepareStatement("insert into STUDENT values(?,?,?,?,?,?,?,?,?,?)");
                stmt.setString(1,Year_Admitted);
                stmt.setString(2,Social_Group);
                stmt.setString(3,Branch);
                stmt.setString(4,Student_Id);
                stmt.setString(5,Activity_Description);
                stmt.setString(6,Start_Date);
                stmt.setString(7,End_Date);
                stmt.setString(8,Number_Of_Hours);
                stmt.setString(9,Level_Of_Participation);
                stmt.setString(10,Place_Of_Participation);
               
               count=stmt.executeUpdate();
               
                if(count>0)
                    {
                        response.sendRedirect("student.jsp");
                    }
               }
               catch(Exception e)
                    {
                        System.out.println("Error in Connection");
                         e.printStackTrace();
                    } 
                   
                   %>
           
</body>
</html>
