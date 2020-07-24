public class schdular implements Schedulable{

    public void execute(SchedulableContext contexts){
        List<Job__c> jobs=[select id,name,Number_of_Positions__c from job__c where CREATEDDATE=Today];
        for(Job__c j:jobs)
        {
            j.Number_of_Positions__c=10;
        }
        update jobs;
        
    }
}