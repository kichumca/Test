@IsTest
private class Account_Test {
    private static testmethod void AccountTest() 
    {
        List<Account> listAcc = new List<Account>();
        for(integer i=0;i<10;i++){ 
            Account acc = new Account();
            acc.Name = 'TestAccount'+i;
            acc.AnnualRevenue=75000;
            acc.NumberOfEmployees=600;
            listAcc.add(acc);
        }
       // Test.startTest();
        //insert listAcc;
       // Test.stopTest();
        
        List<Account> accList =[Select Id,Name,AnnualRevenue,NumberOfEmployees from Account where Name != NULL];
        
            system.assertEquals(10, accList.size());
        
    }
}