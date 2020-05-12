trigger EmailMessageTrigger on EmailMessage (before insert, after insert, before update, after update, before delete, after delete) {
    if(Trigger.isBefore && Trigger.isInsert) {
        EmailMessageHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isInsert) {
        EmailMessageHandler.onAfterInsert(trigger.oldMap, Trigger.new, trigger.newMap);
    }

    if(Trigger.isBefore && Trigger.isUpdate) {
        EmailMessageHandler.onBeforeUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isUpdate) {
        EmailMessageHandler.onAfterUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}