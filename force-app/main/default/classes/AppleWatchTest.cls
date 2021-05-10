@isTest//这里test的是class ,1个file里面只有一个class,不能有多个class        ???trigger test方法？？？是要重新写新的APEX???
private class AppleWatchTest {
    @isTest static void createOpportunity(){//这里test的是 test method
        opportunity opp=new opportunity();
        opp.Name='Swift Deal';
        opp.StageName='Prospecting';
        opp.CloseDate=Date.today();
        insert opp;
    }
    @isTest static void abc(){
        
    }
}