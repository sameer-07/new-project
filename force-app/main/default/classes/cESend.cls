public class cESend {
    public candidate__c can{get;set;}
    
    public cESend(){
        can=[select Name,id,Email__c from Candidate__c where id=:ApexPages.currentPage().getParameters().get('id')];
    }

}