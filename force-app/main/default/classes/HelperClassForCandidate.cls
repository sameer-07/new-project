public class HelperClassForCandidate {
    
    @Future(callout=true)
    public static void  afterUpdateMethod(String ListCandidate)
    {
        List<Candidate__c> candidateNewList=(List<Candidate__c>) JSON.deserialize(ListCandidate, List<Candidate__c>.class);
        List<ID> ids=new List<ID>();
        for(Candidate__c data:candidateNewList)
        {
            if(data.Status__c=='Hired')
            {               
                ids.add(data.id);             
            }
        } 
        if(ids.size()>0){
            SendEmail.SendToCandidate(ids);
        }     
    }  
    public static void beforeInsertMethod(List<candidate__c> can)
    {
        
        for(candidate__c acc:can)
        {
            if(acc.salary__c==NULL)
            {
                acc.salary__c.addError('Expected Salary field is missing');
            }
            acc.Application_Date__c= DateReturn.returnDate();
        }
        
    }
    
    public static void BeforeInsertApplyMethod(List<candidate__c> can)
    {
       // for(candidate__c acc : can){
            string jobname=can[0].Job__c;
            
		 Map<id,job__c> mapForjob =new  Map<id,job__c>([SELECT id from job__c WHERE Active__c = false]);
       
       for(candidate__c canObj :(list<candidate__c>) Trigger.New)
       {
           if(mapForjob.containsKey(canObj.Job__c))
           {
               canObj.addError('This job is not active');
           }
 
   }
        }
        
        
        
        
        
    }