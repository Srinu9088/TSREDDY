    <% //session.setMaxInactiveInterval(5);
       //session.invalidate();
      //response.sendRedirect("Home.jsp");
    %>
<html>
        <head>
        
        <script type="text/javascript">   
            window.setTimeout(function() {
                window.location.href = 'Home.jsp';
                }, 5000);
        </script>
        </head>
        
<body>
    <center>
    <img src="IMAGES/logout2.png" style="margin-top: 170pt">
    <h2 style="text-transform: capitalize">Please wait, We are redirect to Home page </h2>
    </center>
</body>
</html>