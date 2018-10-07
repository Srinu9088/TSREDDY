<html>
<head>
    <script src="jquery-1.11.3.min.js"></script>
    
<style>
    .moveAble{
        position:absolute;
        padding-top: 10pt;
    }

</style>
    
<script type="text/javascript">

// Popup window code
function newPopup(url) {
	popupWindow = window.open(
		url,'popUpWindow','height=720,width=1040,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=no,menubar=no,location=no,directories=no,status=no')
}

</script>

    </head>
    <body>
    <div class="moveAble">
    <div>Welcome to CFSR</div>
     </div>
    <script>
        $(document).ready(function(){
            var $moveable = $('.moveAble');
            $(document).mousemove(function(e){
                $moveable.css({'top':e.pageY,'left':e.pageX});
            });
        });
    
    </script>
    
    </body>
</html>