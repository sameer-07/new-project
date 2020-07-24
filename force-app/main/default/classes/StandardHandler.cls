public class StandardHandler {
    private boolean m_isExecuting =false;
    private integer batchSize =0;
    
    public StandardHandler(boolean isExecuting,integer size){      
        m_isExecuting=isExecuting;
        batchSize= size;
    }
    public void onBeforeInsert(List <Account> newAccount){
        System.debug('Account Trigger On Before Insert ');
    }
    public void onAfterInsert(List <Account> newAccount){
        System.debug('Account Trigger On After Insert ');
    }
    public void onBeforeUpdate(List <Account> newAccount,List <Account> oldAccount,map<ID,Account> newAccountmap,map<ID,Account> oldAccountmap){
        System.debug('Account Trigger On Before Update ');
    }
    public void onAfterUpdate(List <Account> newAccount,List <Account> oldAccount,map<ID,Account> newAccountmap,map<ID,Account> oldAccountmap){
        System.debug('Account Trigger On After Update ');
    }
    @future
    public Static void onAfterUpdateAsync(Set<ID> newAccountIDs){        
        
    }
    public boolean IsTriggerContext{
        get{return m_isExecuting;}          
    }
    public boolean IsVisualForcePageContaxt{
        get{return !IsTriggerContext;}
    }
    public boolean IsWebServiceContaxt{
        get{return !IsTriggerContext;}
    }
    
}