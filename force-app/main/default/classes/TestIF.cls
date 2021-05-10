public class TestIF{
    public static void demo(){
        integer userAge=17;
        if(userAge<=18){
            System.debug('User is 18 or younger');
        }else{
            System.debug('User is older than 18');
        }
    }
} //在debug中点击'open execute anonymous window'调用 TestIF.demo();
//如何让它变成动态的，用integer userAge???怎么调用？？？