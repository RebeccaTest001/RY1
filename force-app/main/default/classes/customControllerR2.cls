public class customControllerR2 {
    public Account acct{get;private set;}//private set是只读的。get:取值， set:设置一个新的值，把原来的值覆盖。相当于update.
    public customControllerR2(){
        ID id=ApexPages.currentPage().getParameters().get('id'); //ID 是什么意思，这一整行请解释一下。
        acct=(id==null)?new Account():[select name,phone,industry from Account where Id=:id];//如果是null,insert一个新的record, 否则，从数据库中取值。:id什么意思？
    }
    public PageReference savetest(){//???
        try{
            upsert(acct);
        }catch(system.DMLException e){//DMLException是一个固定写法的错误类型。system.DMLException
            ApexPages.addMessages(e);//apex页面里会显示这个错误的message. 
            return null;//在自己的页面上显示错误的message. 
        }
        //ApexPages.StandardController是一个新的constructor.  =new ApexPages.StandardController(var).view()固定写法。
        PageReference redirectSuccess=new ApexPages.StandardController(acct).view();//没有错误执行try里面的东西后，返回到这个acct的detail页面。
        return redirectSuccess;
    }
}