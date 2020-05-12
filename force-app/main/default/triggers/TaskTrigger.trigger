trigger TaskTrigger on Task (before insert) {

    if(Trigger.isBefore && Trigger.isInsert) {
        TaskTriggerHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }
    
    if(Trigger.isBefore && Trigger.isUpdate) {
        TaskTriggerHandler.onBeforeUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}