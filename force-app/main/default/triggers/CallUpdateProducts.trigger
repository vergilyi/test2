/**********************************************************************
Class Name: CallUpdateProducts 
@author: Wenbo Liu
@date: Oct 2nd 2019
@description: Call UpdateProducts Batchable class

Modification Log:
--------------------------------------------------------------------------
Developer       Date                Description
--------------------------------------------------------------------------
Wenbo Liu     Oct 2nd 2019           Initial Ver.1.0
***********************************************************************/
trigger CallUpdateProducts on ProductCTN__c (after insert) {
    /* Roy Comment */
    Database.executeBatch(new UpdateProductByPCTNBatch(Trigger.New));
    /* Roy Comment */
}