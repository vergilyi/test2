/**********************************************************************
Class Name: OrderTrigger 
@author: Edward Shao
@date: Apr 23rd 2019
@description: Apex triggers enable you to perform custom actions before or after events to record 
    
Modification Log:
--------------------------------------------------------------------------
    Developer       Date                Description
--------------------------------------------------------------------------
    Edward Shao    Apr 23rd 2019        Initial Ver.1.0
***********************************************************************/
trigger OrderTrigger on Order (before insert, after insert, before update, after update, before delete, after delete) {
    if(Trigger.isBefore && Trigger.isInsert) {
        OrderTriggerHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isInsert) {
        OrderTriggerHandler.onAfterInsert(trigger.oldMap, Trigger.new, trigger.newMap);
    }

    if(Trigger.isBefore && Trigger.isUpdate) {
        OrderTriggerHandler.onBeforeUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isUpdate) {
        OrderTriggerHandler.onAfterUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}