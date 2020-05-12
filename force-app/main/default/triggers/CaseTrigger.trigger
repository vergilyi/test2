/**********************************************************************
Class Name: CaseTrigger 
@author: Edward Shao
@date: Jul 31st 2019
@description: Apex triggers enable you to perform custom actions before or after events to record 
    
Modification Log:
--------------------------------------------------------------------------
    Developer       Date                Description
--------------------------------------------------------------------------
    Edward Shao    Jul 31st 2019           Initial Ver.1.0
***********************************************************************/
trigger CaseTrigger on Case (before insert, after insert, before update, after update, before delete, after delete) {

    if(Trigger.isBefore && Trigger.isInsert) {
        CaseTriggerHandler.onBeforeInsert(Trigger.new, trigger.newMap);
    }

    if(Trigger.isAfter && Trigger.isInsert) {
        CaseTriggerHandler.onAfterInsert(trigger.oldMap, Trigger.new, trigger.newMap);
    }

    if(Trigger.isBefore && Trigger.isUpdate && GlobalConstants.RUN_BEFORETRIGGER_CASE) {
        CaseTriggerHandler.onBeforeUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
        GlobalConstants.RUN_BEFORETRIGGER_CASE = false;
    }

    if(Trigger.isAfter && Trigger.isUpdate && GlobalConstants.RUN_AFTERTRIGGER_CASE) {
        CaseTriggerHandler.onAfterUpdate(trigger.oldMap, Trigger.new, trigger.newMap);
        GlobalConstants.RUN_AFTERTRIGGER_CASE = false;
    }
}