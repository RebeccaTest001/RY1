public class test4{
    public static Account display1(){
        Account acct=new Account(Name='SSSS');
        Database.insert(acct);
        ID acctId=acct.Id;
        Contact cont=new Contact(FirstName='S1', LastName='S2', AccountId=acctId);
        Database.insert(cont);
 		return (acct);
    }
}//?????如何同时返回几个不同的value???
/*debug中独立的snippet
 * Account acct = new Account(Name='SFDC Account');
insert acct;
// Once the account is inserted, the sObject will be 
// populated with an ID.
// Get this ID.
ID acctID = acct.ID;
// Add a contact to this account.
Contact mario = new Contact(
    FirstName='Mario',
    LastName='Ruiz',
    Phone='415.555.1212',
    AccountId=acctID);
insert mario;*/