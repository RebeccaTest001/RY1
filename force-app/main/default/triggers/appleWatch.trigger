trigger appleWatch on Opportunity (after insert, before update ) {
    if(Trigger.isInsert && Trigger.isAfter){
        // ....
    }else if(Trigger.isUpdate && Trigger.isBefore){
        // ...
        
    }
    for(Opportunity opp:Trigger.new){
        Task t=new Task();
        t.Subject ='Apple Watch Promo';
        t.Description='Send them one ASAP';
        t.Priority='High';
        t.WhatId=opp.Id;
        insert t;   
    }
}