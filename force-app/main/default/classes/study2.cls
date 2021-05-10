public class study2 {
    static integer num=3;
    public static void abc2(){
        list<account> accts; //account[] acct;
        accts=[select id, name from account where createdDate>Yesterday limit 10];
              delete accts;
       
        accts=new account[num];
            for (integer i=0; i<num; i++){
              accts[i]=new account(name='TTT '+i);        
            }
        insert accts;
        
        list<contact> cons=new list<contact>();
        for (Account acc:accts){
            cons.add(new contact(LastName=acc.name +'1', accountid=acc.id));
            cons.add(new contact(LastName=acc.name +'2', accountid=acc.id));
        }
    }
}
/*public class study1{		
		public static void abc1(){
			list<account> accts=[select id, name from account where name like '%test%' limit 3];			
			list<contact> cons=new list<contact>();
			for(account a:accts){
				cons.add(new contact(LastName=a.name+'a', FirstName='First'));
				cons.add(new contact(LastName=a.name+'b', FirstName='Second'));
			}
            insert cons;
		}				
}*/