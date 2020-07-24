trigger checkactivate on candidate__c (before insert) {
candidate__c c= Trigger.new[0];
if(c.job__r.Active__c==false)
{
Trigger.new[0].addError('this job is not active');
}

}