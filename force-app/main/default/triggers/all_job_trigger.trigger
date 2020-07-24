trigger all_job_trigger on Job__c (before delete,after insert,after update) {
    
    all_job_trigger jobObject=new all_job_trigger(trigger.isExecuting,Trigger.size);
    
    if(Trigger.isdelete)
    {      
        if(Trigger.isbefore)
        {
            jobObject.beforeDelete(trigger.old);
        }
        else
        {
            
        }
    }
    
    if(Trigger.isinsert)
    {    
        if(Trigger.isafter )
        {
            jobObject.afterInsertUpdate();
        }
        else{
            
        }
        
    }
    
    if(Trigger.isupdate)
    {   
        if(Trigger.isafter)
        {
            jobObject.afterInsertUpdate(); 
            all_job_trigger.onAfterUpdateAsync(JSON.serialize(Trigger.New));
        }
        else
        {
            
        }
    }
    
}