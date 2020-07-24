public class all_job_trigger {
    private boolean m_isExecuting =false;
    private integer batchSize =0;
    
    public all_job_trigger(boolean isExecuting,integer size)
    {
         m_isExecuting=isExecuting;
         batchSize= size;
    }
    
    public  void beforeDelete(list<job__c> can)
    {
        for(Job__c c:can)
        {
            if(c.Active__c==true)
            {
                c.addError('This job is active and cannot be deleted');
            }
        }
    }
    public  void afterInsertUpdate()
    {
        List<Job__c> jobs=new List<Job__c>();
        for(Job__c c:[SELECT Number_of_Positions__c,Hired_Applicants__c,Active__c FROM Job__c WHERE Active__c !=true])
        {
            if(c.Hired_Applicants__c < c.Number_of_Positions__c){
                c.Active__c=true;
                jobs.add(c);
            }
        }
        if(jobs.size()>0){
            update jobs;
        }     
        
        
        
        List<Job__c> job=new List<Job__c>();
        for(Job__c c:[SELECT Number_of_Positions__c,Hired_Applicants__c,Active__c FROM Job__c WHERE Active__c =true]){
            if(c.Hired_Applicants__c ==c.Number_of_Positions__c){
                c.Active__c=false;
                job.add(c);
            }
        }
        if(job.size()>0){
            update job;
        }   
    }
    
    
    
     @future(callout=true)
    public static void onAfterUpdateAsync(String List1){     
        List<Job__c> can = (List<Job__c>) JSON.deserialize(List1, List<Job__c>.class);
         for(Job__c c :can)
        {
            Datetime moddate=c.LastModifiedDate;
            if(c.Number_of_Positions__c==c.Hired_Applicants__c){
                EmailManager.sendMail('sameerbshaikh07@gmail.com', 'No Job positions left', 'All required candidate has been hired for this job on '+
                                      moddate + '.');}	
        }
    }
    
}