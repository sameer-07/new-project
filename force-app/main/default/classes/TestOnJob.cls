@isTest
public class TestOnJob {
@isTest
    public static void Test()
    {
        Job__c j=new Job__c();
        j.Number_of_Positions__c=5;
        j.Active__c=true;
        j.Job_type__c='Manager';
        j.Required_Skills__c='People Skills';
        j.Certification_Required__c='MPM (Master Project Manager)';
        j.Manager__c='0032x000005p7PVAAY';
         test.startTest();
        insert j;
       
         
                                j.Number_of_Positions__c=10;
                                update j;
        
                                test.stopTest();
       
        List<Job__c> joblst=[select Name__c from Job__c where Manager__c=:'0032x000005p7PVAAY'];
        system.assertEquals(1, joblst.size());
    }
@isTest    
    public static void deleteJob()
    {
        Job__c j=new Job__c();
        j.Number_of_Positions__c=1;
        j.Active__c=true;
        j.Job_type__c='Manager';
        j.Required_Skills__c='People Skills';
        j.Certification_Required__c='MPM (Master Project Manager)';
        j.Manager__c='0032x000005p7PVAAY';
        insert j;
        test.startTest();
         Database.DeleteResult result = Database.delete(j,false);
        test.stopTest();
        
          System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('This job is active and cannot be deleted',
                             result.getErrors()[0].getMessage());
        
        
    }
}