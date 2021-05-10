public class MyControllerExtensionR1 {
	private final Account acct;
    public MyControllerExtensionR1(ApexPages.StandardController stdController){//???
        this.acct=(Account)stdController.getRecord();//??
    }
    public string getGreeting(){
        return 'Hello  ' +acct.name+'('+acct.id+ ')';
    }
}