trigger UserTrigger on User (before update) {
    if(Trigger.isBefore && Trigger.isUpdate) {
        UserTriggerHandler.onBeforeUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}