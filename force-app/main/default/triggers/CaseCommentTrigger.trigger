trigger CaseCommentTrigger on CaseComment (before insert, after insert, before update, after update, before delete, after delete) {
     if(Trigger.isBefore && Trigger.isInsert) {
        CaseCommentHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isInsert) {
        CaseCommentHandler.onAfterInsert(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}