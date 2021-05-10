trigger AccountTrigger on Account (before insert) {
    Account newAccount=Trigger.new[0];
    system.debug(newAccount);
    system.debug(newAccount.Name);
    system.debug(newAccount.Id);
}