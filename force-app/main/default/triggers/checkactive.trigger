trigger checkactive on candidate__c (before insert) {
for(candidate__c s : Trigger.new)
   {
   
   string jobname=s.job__c;

    Job__c name = [SELECT Active__c FROM  Job__c where name = 'jobname'];

 

   }
  
}