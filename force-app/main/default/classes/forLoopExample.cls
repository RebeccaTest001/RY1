Public class forLoopExample{
    public static void forLoopDemo1(){
        for(integer i=1;i<=10;i++){
            system.debug(i);
        }
    }
    public static void forLoopDemo2(){
        for(integer i=1;i<=20;i=i+3){
            system.debug(i);
        }
    }
    public static void forLoopDemo3(){
        for(integer i=2;i<=100;i=i+20){
            system.debug('This number is '+i);
        }
    }
}