public class Test01 {
    public static void tetsPerson(){
        Person p1 = new Person();//new 造一个具体的person
        p1.firstname = 'san';
        p1.lastname = 'zhang';
        String fullName = p1.getFullName();
        system.debug(fullName);
        
        
        Person p2 = new Person();//new 造一个具体的person
        p2.firstname = 'si';
        p2.lastname = 'li';
    }
	
}