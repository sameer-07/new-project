public class SchedularOnJob implements Schedulable{

    public void execute(SchedulableContext contexts){
        List<Job__c> jobs=[select id,name,Number_of_Positions__c from job__c where Expires_On__c<=Today];
        for(Job__c j:jobs)
        {	
            j.Active__c=false;
           
        }
        update jobs;
    }
    }