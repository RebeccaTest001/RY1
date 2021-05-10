public class SimpleInterest{
    public static void SimInt(){
        integer p;
        double si,r,t;
        p=1000;
        r=10;
        t=2;
        si=(p*r*t)/100;
        System.debug('Simple interest is '+si);
    }
}//调用SimpleInterest.SimInt();