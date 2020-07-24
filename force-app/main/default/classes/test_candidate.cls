@isTest
public class test_candidate {
   @isTest static void checksalary()
   {
       candidate__c candidate=new candidate__c(Name='dhanshree', Salutation__c='Mrs',First_Name__c='dhanshree',Last_Name__c='belkhade',
                                               date_of_birth__c=System.today(), Email__c='d@gmail.com', Country__c='India',State__c='Maharashtra',
                                               Application_Date__c=System.today(), Status__c='Hired',salary__c=5000);
       insert candidate;
 Decimal celsius = Temperature.FahrenheitToCelsius(32);
        System.assertEquals(0,celsius);
   }

}