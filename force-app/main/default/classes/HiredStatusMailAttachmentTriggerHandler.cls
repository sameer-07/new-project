public class HiredStatusMailAttachmentTriggerHandler {
    
     public static void  checkHiredStatus(List<Candidate__c> candidateNewList)
   {
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
}