public class DemoBatchApex implements Database.Batchable<SObject>{
    
    
    public Database.QueryLocator start(Database.BatchableContext bc){
        
        return Database.getQueryLocator('SELECT id,Name from Account');
    }
    
    public void execute(Database.BatchableContext bc,List<Sobject> s){
        for(Account acc1: (List<Account>)s)
        {
            acc1.Name='New'+acc1.Name;
            
        }
        update s;
        
    }
    
    public void finish(Database.BatchableContext bc){
        system.debug('all the batch get executed');
    }
        
}