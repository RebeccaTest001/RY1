trigger DedupeReminder on Account (before insert) {   
    for(Account acc:Trigger.new){//loop的Trigger.new(), trigger.new()相当于Account[], 是一个Array. acc是array中的一个record.相当于Javascrip中的 for ( let acc of Trigger.new) 
        Case c=new Case();
        c.Subject='Dedupe this account';
        c.OwnerId='0057F000000jqHX';
        c.AccountId=acc.Id;
        insert c;
    }
    
/*    Account[1,2,3] accts = Trigger.new;
    for(integer i=0; i<accts.size(); i++){ // accts.size() == accts.length
        Account acct = accts[i];
    }*/
}