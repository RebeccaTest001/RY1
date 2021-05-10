public class test5 {
    public static List<Account> display1(){
		Account[] acctsWithContacts = [SELECT Name, (SELECT FirstName,LastName FROM Contacts)
                               FROM Account 
                               WHERE Name = 'SFDC Computing'];
		Contact[] cts = acctsWithContacts[0].Contacts;
        return acctsWithContacts;
    }


    public static List<Account> display2(String na){
		Account[] acctsWithContacts = [SELECT Name, (SELECT FirstName,LastName FROM Contacts)
                               FROM Account 
                               WHERE Name =:na];
//		Contact[] cts = acctsWithContacts[0].Contacts;
        return acctsWithContacts;
    }
    
    public static List<Contact> display22(String na){
		Account[] acctsWithContacts = [SELECT Name, (SELECT FirstName,LastName FROM Contacts)
                               FROM Account 
                               WHERE Name =:na];
		Contact[] cts = acctsWithContacts[0].Contacts;
        return cts;
    }
    
    public static List<integer> display3(){
        List<String> names1 = new List<String>();
        for(Account acct : [select name from account]){
            names1.add(acct.Name);
        }        
       List<integer> names2 = new List<integer>();   
       for(Account acct : [select name from account]){
           names2.add(acct.Name.length());
        }
        return names2;
    }
}