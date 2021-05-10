public class customControllerR1{
    //有final变量acct只能在下面的constructor "public customControllerR1()"中赋值。不加final,哪里都可以赋值。Account是account object method
	private final Account acct;//private只能在内部引用，不能被外部直接引用。
    public PageReference savetheRecord(){//PageReference是关键字,是指定返回哪个页面.，固定用法吗. savetheRecord是一个自定义action方法
        update acct; //这个方法是用来update account?
        return null;//???null表示返回本页面。eg: return Page.customControllerR2是返回到customControllerR2这个页面。
    }
    
public customControllerR1(){//这个是constructor给前面的private final Account来用的。method名字和开头的class名字一定要一致。 
      //解释一下where后面的？？？:是变量表达式 ApexPages.currentPage()是当前页面 getParameters()是URL问号后面的东西id=0017F00000Jesrq。 ID是0017F00000Jesrq
    acct=[select id,Name,Site from Account where id=:ApexPages.currentPage().getParameters().get('id')];  
}
public Account getAbc(){//getABC是个getter, get是固定的，后面的Abc可以换成任何东西。如果第三行改成public, 就不需要这个getter来间接引用acct. 
    return acct;
 }
}