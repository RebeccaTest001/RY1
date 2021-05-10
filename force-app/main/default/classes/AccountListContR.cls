public class AccountListContR {
    public ApexPages.StandardSetController accts{
        get{
            if(accts==null){
                accts=new ApexPages.StandardSetController(Database.getQueryLocator([Select name, accountNumber FROM Account]));
            }
            return accts;
        }
        set;
    }   
    public List<Account> getAccounts(){
        return (List<account>)accts.getRecords();    
    }
}