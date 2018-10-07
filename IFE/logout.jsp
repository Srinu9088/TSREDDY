    <% //session.setMaxInactiveInterval(5);
       //session.invalidate();
      //response.sendRedirect("Home.jsp");
    %>
<html>
        <head>
        
        <script type="text/javascript">   
            window.setTimeout(function() {
                window.location.href = 'login.jsp';
                }, 5000);
        </script>
        </head>
        
<body>
    <center>
    <img src="IMAGES/logout2.png" style="margin-top: 170pt">
    <h2 style="text-transform: capitalize">Please wait, We are re redirect to Login page </h2>
    </center>
</body>
</html>