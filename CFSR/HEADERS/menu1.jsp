<html>
<head>
<style> 
        ul{
            list-style-type: none;
            margin: 0;
            padding:0;
            overflow: hidden;
            background-color:#4D4747;
        }
        
        li{
            float: left;
            padding-left: 0.5cm;
        }
        
        li a{
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        
        }
        
    
    #mySidenav a {
    position: absolute;
    left: -30px;
    transition: 0.3s;
    padding: 15px 0px 15px 11px;
    width: 130px;
    text-decoration: none;
    font-size: 17px;
    color: white;
    border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
    left: 0;
}

#nss {
    top: 260px;
    background-color: #4CAF50;
}

#roatract {
    top: 320px;
    background-color: #2196F3;
}

#vidyadaan {
    top: 380px;
    background-color: #f44336;
}

#wer4help {
    top: 440px;
    background-color: #f21098;
}
    #yes {
    top: 500px;
    background-color: blue;
}
    #hoh {
    top: 560px;
    background-color: green;
}
        
        </style>
</head>
<body>
       
<div id="lis">
<ul>
        <li>
        <div id="mySidenav" class="sidenav">
        <a href="student.jsp" id="nss">NSS</a>
        <a href="ROTARACT.jsp" id="roatract">ROTARACT</a>
        <a href="VIDYADAAN.jsp" id="vidyadaan">VIDYADAAN</a>
        <a href="WER4HELP.jsp" id="wer4help">WeR4Help</a>
        <a href="YES.jsp" id="yes">YES</a>
        <a href="HOH.jsp" id="hoh">HoH</a></li>
        <li><a href="StudentInfo.jsp">INFORMTION</a></li>
        <li><a href="search.jsp">SEARCH</a></li>    
            
        <li style="float:right"><a href="logout.jsp">LOGOUT</a></li>
        <li style="float:right"><a href="user_page.jsp">BACK</a></li>
        </ul>
    </div>
  </body>
</html>