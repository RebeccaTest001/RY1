trigger ContactTrigger on Contact (before insert) {
    system.debug(trigger.new);
}