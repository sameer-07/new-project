trigger T1 on Account (before insert) {

if(!ByPassTrigger__c.getInstance().Activate_Deactivate_Trigger__c){
Account a=Trigger.New[0];
if(a.AnnualRevenue==NULL)
{
a.addError('AnnualRevenue should not be null');
}
}
}