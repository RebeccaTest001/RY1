public class LeadExample {    
   public static void DivMethod(){
       try{
           System.debug('Hello');
       }catch(Exception e){
           System.debug('I am trying to catch this exception');//如果try tatement 有错误，显示catch中的内容。
       }Finally{
          System.debug(6/2);//不论try的对错，都会显示的内容，放到fianally中。 
       }
   } 
}