/*Create an Apex class with a method that returns an array (or list) of formatted strings ('Test 0', 'Test 1', ...). The length of the array is determined by an integer parameter.
The Apex class must be called StringArrayTest and be in the public scope
The Apex class must have a public static method called generateStringArray
The generateStringArray method must return an array (or list) of strings
The method must accept an incoming Integer as a parameter, which will be used to determine the number of returned strings????incoming integer??
The method must return a string value in the format Test n where n is the index of the current string in the array. why put n??*/

//static method
public class StringArrayTest {
    public static List<String> generateStringArray(integer n){//List<String>是指定这个method的data type?如果不指定是用‘void’, 必须没有return返回值???
        List<String> ArrayString= new List<String>(); 
        for (integer i=0;i<n; i++)
            ArrayString.add('Test ' +i);
         return ArrayString;
    }    
}
/*static method 的调用invoke方式和debug打印方式,从Debug-Open execute anonymous window
System.debug(StringArrayTest.generateStringArray(3);不需要new一个新的出来 */

/*instance method
public class StringArrayTest {
    public  List<String> generateStringArray(integer n){//没有static这个词，就是instance method
        List<String> ArrayString= new List<String>(); 
        for (integer i=0;i<n; i++)
            ArrayString.add('Test ' +i);
         return ArrayString;
    }    
}*/
/*instance method 的调用invoke方式和debug打印方式,从Debug-Open execute anonymous window
StringArrayTest s1=new StringArrayTest();  需要new一个新的，前面和后面的名字一样, Eg:这个Apex Class名字是StringArrayTest，前面的和后面new的要一样。
System.debug(s1.generateStringArray(3)); 打印出来，传一个parameter参数进去*/