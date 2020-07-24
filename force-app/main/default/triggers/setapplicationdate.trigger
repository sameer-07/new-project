trigger setapplicationdate on candidate__c (before insert) {

for(candidate__c c: Trigger.new)
{
c.Application_Date__c=system.today()+1;

}

}