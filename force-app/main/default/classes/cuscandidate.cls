public class cuscandidate {

    public PageReference edit() {
        return null;
    }

    
    public candidate__c candidate {get; private set;}
    
    public cuscandidate()
    {
        ID id=ApexPages.currentPage().getParameters().get('id');
        candidate=(id==null)?new candidate__c():
        [SELECT Salutation__c,First_Name__c,Last_Name__c,date_of_birth__c,Email__c,Country__c,State__c,Application_Date__c,Status__c,salary__c,Job__c from candidate__c where id=:id];
    }
    
    public PageReference save()
    {
        try{
            upsert(candidate);
        }
        catch(System.DmlException ex)
        {
         ApexPages.addMessages(ex); 
            return null;
        }
        PageReference redirectSuccess=new PageReference('https://c.ap17.visual.force.com/apex/candidateCustom?core.apexpages.request.devconsole=1');
        return(redirectSuccess);
    }

}