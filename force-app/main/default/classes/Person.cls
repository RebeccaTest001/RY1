public class Person{
    public string firstname;
    public string lastname;
    public void getFullName(){
        System.debug('The first name is '+firstname );
        System.debug('The last name is '+lastname);
        //return firstname+' '+ lastname; 这一行有错误？？？？
    }
}
/*调试 （debug）
Person p1=new Person();
p1.firstname='san';
p1.lastname='zhang';
p1.getFullName();

Person p2=new Person();
p2.firstname='Hello';
p2.lastname='Xiao';
p2.getFullName();*/