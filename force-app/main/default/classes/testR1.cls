public class testR1 {
    public static list<Contact> con(){    
    	list<Contact> conList=new list<Contact>{
            new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'),
            new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'),
            new Contact(FirstName='Kim',LastName='Shain',Department='Education')
            };
        insert conList;  

       
        for(Contact c:conList){
            if(c.Department=='Finance'){
                c.Title='Financial analyst';
            }         
        }
        update conList;
        return conList;
        
    }
    
     public static list<Contact> con2(){    
    	list<Contact> conList2=new list<Contact>();
         conList2.add(new Contact(FirstName='Kathy',LastName='Smith',Department='Technology'));
         conList2.add(new Contact(FirstName='Caroline',LastName='Roth',Department='Finance'));
         conList2.add(new Contact(FirstName='Kim',LastName='Shain',Department='Education'));
        insert conList2;  
        return conList2;
    }
     
 }
//System.debug(testR1.con()); 打印方式
//System.debug(testR1.con2());