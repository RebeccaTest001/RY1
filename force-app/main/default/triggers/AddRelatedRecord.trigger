trigger AddRelatedRecord on Account(before delete){
    for(Account a:[SELECT Id FROM Account 
                  WHERE Id IN (SELECT AccountId From Opportunity) AND 
                  Id IN:Trigger.old]){//??
        Trigger.oldMap.get(a.Id).addError(//????
        'Cannot delete account with related opportunities.');       
    }
}