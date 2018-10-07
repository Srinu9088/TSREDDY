<%@ page import = "java.sql.*" %>
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
        margin: 0;
        width: 100%;
    }    
	</style>
    <script>
 
    function PDF(){
        document.getElementById("header").style.visibility='hidden';
       // document.getElementById("dvData").style.visibility='hidden';
        document.getElementById("tab").style.visibility='hidden';
        document.getElementById("pri").style.visibility='hidden'; 
        document.getElementById("pri1").style.visibility='hidden'; 
        $('#dvData').css({"position":"absolute","top":"0px"});
        window.print();
        $('#dvData').css({"position":"relative"});
        document.getElementById("header").style.visibility='visible';
        /*document.getElementById("dvData").style.visibility='visible';*/
        document.getElementById("tab").style.visibility='visible';
        document.getElementById("pri").style.visibility='visible';  
        document.getElementById("pri1").style.visibility='visible';  
    }  
        
    function cl(){
        window.open('data:application/vnd.ms-excel,' + encodeURIComponent($('#dvData').html()));
    }
        
     $(function() {
      var $id = $('#sID');
      $id.keyup(function(e) {
        if ($id.val().length >= 10) {
          $(this.form).submit();
        }
      });
    });
    </script>
	
</head>

<body>
    <%@include file="head.jsp"%> 
        <div id="tab" class="container">
        <form class="navbar-form navbar-left" action="Hours Done.jsp" style="padding-left: 350pt;padding-top: 50pt" method="post">
        <div class="form-group">
            <input type="text" id="sID" name=cer maxlength="10" class="form-control" placeholder="Enter your roll number" pattern="(?=.*\d)(?=.*[A-Z]).{10,}">
        </div>
        </form>
        </div>
</body> 
</html>
