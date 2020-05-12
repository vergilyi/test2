Trigger LiveChatTranscriptTrigger on LiveChatTranscript (before insert, after insert, before update, after update, before delete, after delete) {

    if(Trigger.isBefore && Trigger.isInsert) {
        LiveChatTranscriptTriggerHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }

    if(Trigger.isBefore && Trigger.isUpdate) {
        LiveChatTranscriptTriggerHandler.onBeforeUpdate(Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isInsert) {
        LiveChatTranscriptTriggerHandler.onAfterInsert(Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isUpdate) {
        LiveChatTranscriptTriggerHandler.onAfterUpdate(Trigger.new, trigger.newMap);
    }
}