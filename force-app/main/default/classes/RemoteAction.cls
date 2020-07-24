global with sharing class RemoteAction {
    public RemoteAction(){ }
    @RemoteAction
    global static void incresePos()
    {
        List<job__c> jobs=[SELECT id, Number_of_Positions__c from job__c];
        List<job__c> updateJob=new List<job__c>(); 
        for(job__c j:jobs)
        {
            j.Number_of_Positions__c=j.Number_of_Positions__c+1;
            updateJob.add(j);
        }
        update updateJob;
    }

    
}