trigger job_status_active on Job__c (before delete) {

for(Job__c c:trigger.old)
{
if(c.Active__c==true)
{
c.addError('This job is active and cannot be deleted');
}
}

}