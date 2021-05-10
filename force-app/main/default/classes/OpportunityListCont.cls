public class OpportunityListCont{  //请一条条解释一下
    //setController. opps是一个method?还是其他的什么东西？？？StandardsetController前面固定搭配是ApexPages. 但是ApexPages后面可以有多种不同搭配。
    public ApexPages.StandardsetController opps{//opps是个变量,任何变量没有赋值之前都是空的。
        get{//取值。 get & set是methods
            if(opps==null){//为什么等于null,怎么看出来的，等于null是取所有的record的Name&CloseDate吗？不等于null会怎样？？？怎样传不等null的值
                opps=new ApexPages.StandardSetController(Database.getQueryLocator([Select Name,CloseDate from opportunity]));
                //pagination 分页 query locator 一次取一部分数据，根据需要再取后面的数据。
            }
          return opps;// 返回值。
        }
        set;//set是可以设置新的值
    }
    public List<Opportunity> getOpportunities(){//List<Opportunity>是multiply record. 定义一个method "Opportunities()"
        return (List<Opportunity>)opps.getRecords();//返回到“{！opportunities}”中的值， 
    }
}