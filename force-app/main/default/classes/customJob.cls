public class customJob { 
    public PageReference edit() {
        return null;
    }


    public job__c job {get; private set;}
    
    public customJob()
    {
        ID id=ApexPages.currentPage().getParameters().get('id');
        job=(id==null)?new job__c():
        [SELECT name,Name__c,Description__c,Number_of_Positions__c,Expires_On__c,Active__c,Salary_Offered__c,Job_type__c,Required_Skills__c,Qualification_Required__c,Certification_Required__c,Manager__c from job__c where id=:id];
    }
    
    public PageReference save()
    {
        try{
            upsert(job);
        }
        catch(System.DmlException ex)
        {
         ApexPages.addMessages(ex); 
            return null;
        }
        PageReference redirectSuccess=new ApexPages.StandardController(job).view();
        return(redirectSuccess);
    }

}