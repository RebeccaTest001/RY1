public class Cat{
    public String name;
    public Integer size;
    public Cat(String n,Integer s){//this is one of the constructor
        name=n;
        size=s;    
    }
    public void display(){
        System.debug('Name of my cat '+name);
        System.debug('Size of my cat '+size);
    }
}

/*public class Cat{
    private String name;
    private Integer size;
    public Cat(){ //this is another constructor method
        name='Tina';
        size=10;    
    }
    public void display(){
        System.debug('Name of my cat '+name);
        System.debug('Size of my cat '+size);
    }
}*/
//调用：cat c1=new cat();
//c1.display();

/*//Constructor definition
public class Cat{
    private String name;
    private Integer size;
    public Cat(){
        name='Tina';
        size=10;    
    }
    public void display(){
        System.debug('Name of my cat '+name);
        System.debug('Size of my cat '+size);
    }
}*/