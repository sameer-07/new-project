public class InsertAccount {

    public static boolean flag=true;
    public static void call()
    {
       if(flag==true)
        {
           flag=false;
            Account acc=new Account();
            acc.Name='test11';
            acc.Phone='12121';
            acc.Industry='Banking';
            insert acc;
            
        }
        
    }
}