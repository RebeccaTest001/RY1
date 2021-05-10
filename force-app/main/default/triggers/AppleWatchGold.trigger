trigger AppleWatchGold on Opportunity (after insert,Before insert  ) {//如何被test??? 怎么把这个trigger和AppleWatchTest联系在一起？？？
    for(opportunity opp:Trigger.new){
        if(opp.Amount>5000){
            Task t=new Task();
            t.Subject='Apple watch gold';
            t.Description='Send one ASAP';
            t.Priority='High';
            t.WhatId=opp.Id;
            insert t;
        }
    }
}