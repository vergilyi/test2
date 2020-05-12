trigger FeedItemTrigger on FeedItem (before insert, after insert, before update, after update, before delete, after delete) {
    if(Trigger.isBefore && Trigger.isInsert) {
        FeedItemTriggerHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isInsert) {
        FeedItemTriggerHandler.onAfterInsert(trigger.oldMap, Trigger.new, trigger.newMap);
    }

    if(Trigger.isBefore && Trigger.isUpdate) {
        // FeedItemTriggerHandler.onBeforeUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isUpdate) {
        // FeedItemTriggerHandler.onAfterUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}