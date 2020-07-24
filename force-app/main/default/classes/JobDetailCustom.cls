public class JobDetailCustom {
    public sObject jobRecord{get; set;}
    public List<String> jobFields {get; set;}
    
    public List<sObject> records{get;set;}
    public List<String> fields{get;set;}
    public List<Job__c> jobId{get;set;}
    
    
    public JobDetailCustom(){
        jobId=[SELECT id FROM Job__c limit 1]; 
        for(job__c j:jobId)
        {
            jobRecord= [Select Id, Name, Number_of_Positions__c, Job_type__c, Manager__r.Email FROM Job__c  WHERE Id =: j.id];
            jobFields = new List<String>{'Name', 'Number_of_Positions__c', 'Job_type__c', 'Manager__r.Email'};
                system.debug('jobRecord');
            //    records = [SELECT First_Name__c, Last_Name__c, Email__c, Country__c, State__c, Job__c, Status__c FROM Candidate__c WHERE Job__c =: Apexpages.currentpage().getparameters().get('id')];
            
            records = [SELECT First_Name__c, Last_Name__c, Email__c, Country__c, State__c, Job__c, Status__c FROM Candidate__c WHERE Job__c =:jobRecord.Id ];
            fields = new List<String>{'First_Name__c', 'Last_Name__c', 'Email__c','Country__c', 'State__c', 'Job__c', 'Status__c'};
                system.debug('records');
        }
    }

}