public class ScheduleJobExpire implements Schedulable{

    public void execute(SchedulableContext contexts){
        List<Job__c> updatedList=new List<Job__c>();
        List<Job__c> jobList = [SELECT Expires_On__c ,Active__c FROM Job__c];
        for(Job__c data : jobList )
        {            

            if(data.Expires_On__c==System.today() || data.Expires_On__c > System.today())
            {
                data.Active__c=false;
               
            }
            updatedList.add(data);
        }
        if(updatedList.size()>0)
        {
            update updatedList;
        }
       
    }
}