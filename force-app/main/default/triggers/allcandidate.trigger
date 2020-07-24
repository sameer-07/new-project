trigger allcandidate on candidate__c (before insert,after update) 
{

        if(Trigger.isbefore && Trigger.isinsert)
    {
    HelperClassForCandidate.beforeInsertMethod(Trigger.New);
    HelperClassForCandidate.BeforeInsertApplyMethod(Trigger.New);
     }
     
     if(Trigger.isUpdate && Trigger.isAfter)
    {
        HelperClassForCandidate.afterUpdateMethod(JSON.serialize(Trigger.New));
    }

     
}