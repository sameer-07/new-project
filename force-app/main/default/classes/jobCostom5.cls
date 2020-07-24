public class jobCostom5 {
    
    public job__c job{get;set;}
    public list<job__c> getDetail()
    {
        return[SELECT name,Name__c,Description__c,Number_of_Positions__c,Expires_On__c,Active__c,Salary_Offered__c,Job_type__c,Required_Skills__c,Qualification_Required__c,Certification_Required__c,Manager__c from job__c];
    }

}