@isTest
public class insertCandidate {
    @isTest
    public static void add()
    {
    candidate__c  candidate=new candidate__c();
    candidate.Name='sameer shaikh';
    candidate.Salutation__c='Mr';
    candidate.First_Name__c='sameer';
    candidate.Last_Name__c='shaikh';
    
        candidate.Email__c='sam@gmail.com';
    candidate.Country__c='India';
        candidate.State__c='Maharashtra';
       
        candidate.Status__c='Hired';
        candidate.Job__c='a022x000009HPyr';
        Test.startTest();
         candidate.salary__c=10000;
        insert candidate;
        Test.stopTest();
        
        List<candidate__c> can=[select Name,Application_Date__c from candidate__c where job__c=:'a022x000009HPyr'];
        System.assertEquals(1, can.size());
        System.assertEquals(10000, candidate.salary__c);
        System.assertEquals(System.today(),can[0].Application_Date__c);
     }
}