public class testR {
    public static void display(String Name, String Phone){
    	Account acct=new Account(Name=Name, Phone=Phone);
        insert acct;
        ID acctId=acct.Id;
        System.Debug('the new Id is '+acctId);
    }
}
//调用 testR.display('tttt','00000')