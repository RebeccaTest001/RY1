public class testR2{//三种不同的Apex method写法和debug方法。
    public static integer display1(integer i){
        integer goodcount1=i+20;
        return goodcount1;//static method (no void) with return
    }//debug method: system.debug(testR2.display1(i));

    public integer display2(integer m){
        integer goodcount2=m+50;
        return goodcount2;//instance method (no void ) with return
    }//debug method: testR2 r=new testR2();
     //system.debug(r.display2(30));

    public static void display3(integer n){
        integer goodcount3=n+70;
        system.debug(goodcount3);
    } //把system.debug写在method里面，然后再在open execute anonymous window直接invoke调用: testR2.display3(n);
}