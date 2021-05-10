@IsTest
public class ContactTriggerTest {
	@IsTest
    public static void testFirstname(){
        Contact c1 = new Contact(LastName = 'LastName1');//hardcode LastName = 'LastName1'
        insert c1; //触发TRIGGER 的INSERT事件。结果是test LastName1                                
        Contact c2 = [select Firstname from Contact where id=:c1.id];//c1是一个变量，变量前面必须加冒号。
        system.assertEquals(c2.FirstName, 'test');//断言FirstName=test. 如果正确，test pass. 如果不正确，fail.
    }
}