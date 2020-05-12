trigger WorkOrderTrigger on WorkOrder (after update, after insert) {
    
    if(Trigger.isAfter && Trigger.isUpdate) {
        WorkOrderTriggerHandler.onAfterUpdate(Trigger.oldMap, Trigger.new, Trigger.newMap);
    }
    
    if(Trigger.isAfter && Trigger.isInsert) {
        WorkOrderTriggerHandler.onAfterInsert(Trigger.oldMap, Trigger.new, Trigger.newMap);
    }


}