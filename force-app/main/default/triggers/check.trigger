trigger check on candidate__c(before insert) {

for(candidate__c acc : Trigger.New){
if(acc.salary__c==NULL)
{
acc.salary__c.addError('Expected Salary field is missing');
}

}
}