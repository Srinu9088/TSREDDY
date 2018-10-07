<%@ page import = "java.sql.*" %>
<!--<% session.setMaxInactiveInterval(180); 
    if(session.isNew())
    {
    response.sendRedirect("Home.jsp");
    }
   %>-->
<%@ page import = "com.db.*" %>
<html>
<head><title align="center">Student Volunteer</title>
<script src="jquery-1.11.3.min.js"></script>
<link rel="icon" href="IMAGES/LOGO/CFSR%20LOGO.png">
    <link rel="stylesheet" href="CSS/myStyles.css">
    <link rel=stylesheet href="CSS/animate.css">
    <%@include file="Boot.jsp"%> </%@include>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
<style>    
    body{
        margin: auto;
        width: 100%;
    }
    .vol_tabl {
        width:500px;
        height:510px; 
        background-color: white;
        text-align: auto;
        border-radius: 25px;
        border: 1px solid #73AD21;
        font-size: 14pt;
        padding: 0pt 20pt 10pt 40pt; 
    }
</style>
    <script>    
    function validation(){
        
          if( document.vForm.year.value == "-1" || 
             document.vForm.year.value == "2018-19" || document.vForm.year.value == "2019-20")
         {
            alert( "Please provide your Correct Year Enroll!" );
            document.vForm.year.focus() ;
            return false;
         }
        
          if( document.vForm.group.value == "-1" )
         {
            alert( "Please provide your Social Group!" );
            document.vForm.group.focus() ;
            return false;
         }
        
          if( document.vForm.branch.value == "" )
         {
            alert( "Please provide your Branch!" );
            document.vForm.branch.focus() ;
            return false;
         }
        
          if( document.vForm.cla.value == "-1" )
         {
            alert( "Please provide your Class!" );
            document.vForm.cla.focus() ;
            return false;
         }
    
          if( document.vForm.sname.value == "" )
         {
            alert( "Please provide your Student Name!" );
            document.vForm.sname.focus() ;
            return false;
         }
        
          if( document.vForm.fname.value == "" )
         {
            alert( "Please provide your Father Name!" );
            document.vForm.fname.focus() ;
            return false;
         }
           
          if( document.vForm.cat.value == "-1" )
         {
            alert( "Please provide your Category!" );
             document.vForm.cat.focus() ;
            return false;
         }
         
         return( true );
    }
        
    function success(){
        alert("Enrolled Successfully and press OK to go to Home Page");
    }
        
    </script>
    <script>
    function myFunction(){
        
        var s= document.vForm.sid.value;
        if( s == "" )
         {
            alert( "Please provide your Student Id!" );
            document.vForm.sid.focus() ;
            return false;
         }
          if(s.charAt(0)>1 ||s.charAt(1)>=9 || s.charAt(0)<=0)
          {
                alert("Please Enter Valid Year");
                document.vForm.sid.focus();
                return false;
            }
        
        var str = document.getElementById("myInput").value;
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
                   else alert("Please Enter Correct Branch Code");
                   
                   $('#branch').val(msg);
                   
                   //document.getElementById("myDiv").innerHTML = msg;
                                     
               }
           else
           {
                alert("Invalid Course Code or type of course");
            }
    }
        else{
            alert("Enter correct course");
        }
        
    }
    $(function() {
      var $id = $('#myInput');
      $id.keyup(function(e) {
        if ($id.val().length >= 10) {
          myFunction();
        }
      });
    }); 
    </script>
</head>

<body>
        <script src="JS/wow.js"></script>
              <script>
              new WOW().init();
              </script>
<%@include file="head.jsp"%>
    <br>    
    <div>
       <center><form name="vForm" method="post" onsubmit="return(validation() && success());">
           <div id="vol_error" style="color: red;text-transform: capitalize"></div> 
            <div class="wow zoomIn vol_tabl">
			 <table style="height: 370pt">
                 <tr>
                 <td colspan="2" align=center><label style="font-size: 20pt">Please Enter Your Details</label>
			     <tr>
                <td>Year Enroll:</td>
                 <td> <select class="volunteer_sel" name="year" style="width: 150pt" autofocus>
                            <option value="-1" selected>------------Select Year-----------</option>
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
                 
                 <tr>
                  <td>Social Group:</td>
                 <td> <select class="volunteer_sel" name="group" style="width: 150pt">
                            <option value="-1" selected>----------Select Group----------</option>
                            <option value="NSS">NSS</option>
                            <option value="YES">YES</option>
                            <option value="HOH">HOH</option>
                            <option value="ROTARACT">ROTARACT</option>
                            <option value="WER4HELP">WER4HELP</option>
                            <option value="VIDYADAAN">VIDYADAAN</option>
                            <option value="OTHERS">OTHERS</option>
                    </select>
                 </td>
                 
                 <tr>
                 <td>Class:</td>
                 <td> <select class="volunteer_sel" name="cla" style="width: 150pt">
                            <option value="-1" selected>----------Select Class------------</option>
                            <option value="FirstYear-1sem">FirstYear-1sem</option>
                            <option value="FirstYear-2sem">FirstYear-2sem</option>
                            <option value="SecondYear-1sem">SecondYear-1sem</option>
                            <option value="SecondYear-2sem">SecondYear2sem</option>
                            <option value="ThirdYear-1sem">ThirdYear-1sem</option>
                            <option value="ThirdYear-2sem">ThirdYear-2sem</option>
                            <option value="FinalYear-1sem">FinalYear-1sem</option>
                            <option value="FinalYear-2sem">FinalYear-2sem</option>
                     </select>
                 </td>
                 
                 <tr>
        
                <td>Student_Id:
                  <td><input type="text" id="myInput" name="sid" pattern="(?=.*\d{5}).{10,}" title="Please Enter Correct Number"><!--<div id="myDiv" class="bra" style="text-align: center;color: green"></div>-->
                <tr>
                 <td>Branch:</td>
                    <td><input type="text" id="branch" name="branch" readonly>
                     <!--<select class="volunteer_sel" id="branch" name="branch" style="width: 150pt">
                            <option value="-1" selected>----------Select Branch----------</option>
                            <option value="CSE">CSE</option>
                            <option value="IT">IT</option>
                            <option value="ECE">ECE</option>
                            <option value="EEE">EEE</option>
                            <option value="CIVIL">CIVIL</option>
                            <option value="CHEMICAL">CHEMICAL</option>
                            <option value="MECHANICAL">MECHANICAL</option>
                     </select>-->
                 </td>
                <tr>
                <td>Student Name:
                  <td><input type="text" size=21 name="sname" pattern="[A-Za-z\s]+" title="Enter Characters Only" onclick="checkbranch()">
                <tr>
                <td>Father Name:
                  <td><input type="text" name="fname" pattern="[A-Za-z\s]+" title="Enter Characters Only">
                <tr>
                <td>Category:
                <td><select class="volunteer_sel" name="cat" style="width: 150pt">
                            <option value="-1" selected>----------Select Category----------</option>
                            <option value="OC">OC</option>
                            <option value="BC">BC</option>
                            <option value="SC">SC</option>
                            <option value="ST">ST</option>
                    </select>  
			   <tr>
               <td colspan=2 align="center"><input class="volunteer_sub" type="submit"  value="SUBMIT">
                 </table>
                    </form>
        </div>
        
                      
            <%  
                DBScript db = new DBScript();
                String Year_Enroll = request.getParameter("year");
                String Social_Group = request.getParameter("group");
                String Branch = request.getParameter("branch");
                String Class = request.getParameter("cla");
                String Student_Id = request.getParameter("sid");
                String Student_Name = request.getParameter("sname");
                String Father_Name = request.getParameter("fname");
                String Category = request.getParameter("cat");
             try
               {
                int count=0;  
                java.lang.Class.forName(db.driverName());
                Connection con = DriverManager.getConnection(db.getConnection(),db.uName(),db.pwd());
                PreparedStatement stmt = con.prepareStatement("insert into VOLUNTEER values(?,?,?,?,?,?,?,?)");
                stmt.setString(1,Year_Enroll);
                stmt.setString(2,Social_Group);
                stmt.setString(3,Branch);
                stmt.setString(4,Class);
                stmt.setString(5,Student_Id);
                stmt.setString(6,Student_Name);
                stmt.setString(7,Father_Name);
                stmt.setString(8,Category);
                
               count=stmt.executeUpdate();
                if(count>0)
                    {
                       response.sendRedirect("Home.jsp");
                    }
               }catch(Exception e)
                    {
                        
                         e.printStackTrace();
                        //out.print(e);
                    } 
                   
                   %>
         <div>
			<button id="myBtn">&uArr;</button>
          </div>      
<script>
        
    $(document).ready(function() {
				$(window).scroll(function() {
					if ($(this).scrollTop() > 10) {
						$('#myBtn').fadeIn();
					} else {
						$('#myBtn').fadeOut();

					}
				});
				$('#myBtn').click(function() {
					$('html, body').animate({
						scrollTop : 0
					}, 500);
					return false;
				});
			});

</script>
        <jsp:include page="footer.jsp"></jsp:include>
           
</body>
</html>
