/**********************************************************************
Class Name: AssetTrigger 
@author: Wenbo Liu
@date: Aug 07th 2019
@description: Apex triggers enable you to perform custom actions before or after events to record 
1
Modification Log:
-------------------------------------------------------------------------------
Developer       Date                Description
-------------------------------------------------------------------------------
Wenbo Liu    Aug 07th 2019           Initial Ver.1.0

*******************************************************************************/
trigger AssetTrigger on Asset (before insert, after insert, before update, after update, before delete, after delete) {
    if(Trigger.isBefore && Trigger.isInsert) {
        AssetTriggerHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }
    
    if(Trigger.isAfter && Trigger.isInsert) {
        AssetTriggerHandler.onAfterInsert(trigger.oldMap, Trigger.new, trigger.newMap);
    }
    
    if(Trigger.isBefore && Trigger.isUpdate) {
        AssetTriggerHandler.onBeforeUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }
    
    if(Trigger.isAfter && Trigger.isUpdate) {
        AssetTriggerHandler.onAfterUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
    }
}