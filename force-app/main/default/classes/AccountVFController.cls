public class AccountVFController {

    public List<sObject> records{get;set;}

    public List<String> fields{get;set;}

    public AccountVFController(){

        records= [Select Name, Email, Phone FROM Contact WHERE AccountId = '0032x000005qonO'];

        fields = new List<String>{'Name', 'Email', 'Phone'};

    }

}