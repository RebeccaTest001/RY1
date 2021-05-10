public class study1{		
		public static void abc1(){
			list<account> accts=[select id, name from account where name like '%test%' limit 3];			
			list<contact> cons=new list<contact>();
			for(account a:accts){
				cons.add(new contact(LastName=a.name+'a', FirstName='First'));
				cons.add(new contact(LastName=a.name+'b', FirstName='Second'));
			}
            insert cons;
		}				
}

/*public class Study1 {//This class delete account & add account & add contact relating to new accounts
	static integer num=2;
    public static void abc1(){
        list<account> accs;  
       accs=[select id from Account where name like '%te%' limit 1];//???how to include multiple where values
        delete accs;
        
       accs= new list <account>();//non array mthod
            for(integer i=0; i<num; i++){
                accs.add(new account(name='Tbbb '+i)); 
            }
        insert accs;  
               accs=new account [Num];//???Why not same as list<account> accs=list <account>();
            for(integer i=0; i<num; i++){
            accs[i]=new account(name='TE '+i);//Array method         
            }
        contact[] cons=new contact[]{};//???can be change to list<contact>  cons=new list<contact>();
            for (Account acc:accs){
                cons.add(new Contact(LastName=acc.name +'1', accountid=acc.id));
                cons.add(new contact(LastName=acc.name+ '2', accountid=acc.id));
                
            }
        insert cons;
    }
}*/