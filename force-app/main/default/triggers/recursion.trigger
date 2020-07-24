trigger recursion on candidate__c (before update) {

for(candidate__c can:Trigger.New)
{
can.First_Name__c='sameer';
}


}