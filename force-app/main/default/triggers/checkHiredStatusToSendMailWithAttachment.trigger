trigger checkHiredStatusToSendMailWithAttachment on candidate__c (after delete, after insert, after undelete, after update, before delete,before insert,before update) 
{

 if(Trigger.isUpdate && Trigger.isAfter)
    {
        HiredStatusMailAttachmentTriggerHandler.checkHiredStatus(Trigger.New);
    }

}