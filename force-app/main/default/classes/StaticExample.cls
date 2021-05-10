public class StaticExample {
    public static void method1(){
        System.debug('I am a static method');
    }//调用debug static method: StaticExample.method1
    public void method2(){
        System.debug('I am not a static method');
    }//调用non static void method:需要创建具体的objects 去调用method2() 
}
/*调用debug static method1: StaticExample.method1();
调用调用non static void method:需要创建具体的新的objects 用这个object去调用method2()
StaticExample e=new StaticExample();
e.method2();*/