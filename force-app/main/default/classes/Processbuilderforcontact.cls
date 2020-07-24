public class Processbuilderforcontact {
    
    @InvocableMethod
    public static void updater(List<ID> ids)
    {
             
         List<Contact> con=new List<Contact>();
       
        List<Account> acc=[SELECT Name,BillingCity,BillingCountry,BillingStreet,BillingState,BillingPostalCode from Account where id in: ids];
        
        for(Account account:acc)
        {
                 Contact a=new Contact();
           
            a.MailingStreet=account.BillingStreet;
            a.MailingCity=account.BillingCity;
            a.MailingState=account.BillingState;
            a.MailingPostalCode=account.BillingPostalCode;
            a.MailingCountry=account.BillingCountry;
            
            con.add(a);
        }
        
    
  
       
        
        
    }

}