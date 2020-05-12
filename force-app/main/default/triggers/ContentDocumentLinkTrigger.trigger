trigger ContentDocumentLinkTrigger on ContentDocumentLink (after insert) {

    if(Trigger.isAfter && Trigger.isInsert) {
        ContentDocumentLinkTriggerHandler.onAfterInsert(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}