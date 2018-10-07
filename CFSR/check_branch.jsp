
<% 
    
       try
        {
        String Id = request.getParameter("n");
        String msg = "";
        char ch[] = Id.toCharArray();
        for(int i=0;i<ch.length;i++)
        {
        if(ch(5)==65 || ch(5)==71)
                msg = "";
        else
                msg = "Please Enter Valid Number"; 
        }
         out.println(msg);      
        }
        catch(Exception e){
   
   }
      
                   
 %>