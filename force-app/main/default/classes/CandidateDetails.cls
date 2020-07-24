public class CandidateDetails { 
    public list<SelectOption> lstJobNames{get;set;}    
    public CandidateDetails(){
         isData=false;
        lstJobNames=new list<SelectOption>();
        for(Job__c objJob:[SELECT Name FROM Job__c limit 30000])
        {
            lstJobNames.add(new SelectOption(objJob.Name,objJob.Name));
        }
    }
    public string selectedJob{get;set;}
    public list<Candidate__c> candiList{get;set;}
    public Boolean isData{get;set;}
    
    
    public void doSearch(){
        
        candiList=[SELECT First_Name__c, Last_Name__c, Email__c FROM Candidate__c WHERE Job__r.Name=:selectedJob];
         if(candiList.size()>0)
         {
             isData=true;
         }
        else{
            ApexPages.Message errorMsg = new ApexPages.Message(ApexPages.Severity.INFO, 'No Record Found');
			ApexPages.addMessage(errorMsg);
              
             isData=false;
        }
        
        
    }
    
}