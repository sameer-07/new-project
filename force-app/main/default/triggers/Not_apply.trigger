trigger Not_apply on candidate__c (before insert) {
  
  for(candidate__c acc : Trigger.New){
    string jobname=acc.Job__c;

       
     for(Job__c c:[SELECT id from Job__c WHERE Active__c !=true])
     {
        if(c.id==jobname)
        {
            acc.addError('This job is not active'); 
        }
             
     }
    
    
}
}