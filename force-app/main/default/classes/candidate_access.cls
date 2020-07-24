public class candidate_access {
    public static string access()
    {	string str;
     for(candidate__C acc :(List<candidate__c>) Trigger.new)
     {
         str=acc.job__c;
     }
        return str;
    }

}