@isTest
public class SetTesing {
    @isTest
    public static void TestSet()
    {
        // Create two accounts, a1 and a2
        Account a1 = new account(name='MyAccount',AccountNumber='100');
        Account a2 = new account(name='MyAccount',AccountNumber='200');
        
        // Add both accounts to the new set 
        Set<Account> accountSet = new Set<Account>{a1, a2};
            
            // Verify that the set only contains one item
            System.assertEquals(2,accountSet.size());
        
        
    }
}