@isTest
public class SchedularTestClass {

 @isTest  
 public  static void jobTest()
 {
 test.startTest();
 
     Job__c job = new Job__c();
       
        job.Manager__c = 'Manager';
        job.Number_of_Positions__c = 8;
        job.Active__c = true;
        job.Required_Skills__c ='Team Player';
        job.Certification_Required__c='MPM (Master Project Manager)';
        job.Qualification_Required__c='Bcom';
        job.Manager__c ='0032x000004IG4D';
        job.Expires_On__c=Date.newInstance( 2020, 07, 04);
        insert job;
       
       // ScheduleJobExpire sje = new ScheduleJobExpire();
        String crexp = '0 33 17 * * ?';
        String jobId = System.schedule('Expire Job newTest',crexp,new ScheduleJobExpire());
        System.debug(jobId);
       
         CronTrigger ct = [SELECT Id, CronExpression, TimesTriggered,NextFireTime FROM CronTrigger WHERE id =:jobId];          
         
     System.assertEquals(crexp,ct.CronExpression);
         
         System.assertEquals(0, ct.TimesTriggered);

     test.stopTest();
   
 }
 
}