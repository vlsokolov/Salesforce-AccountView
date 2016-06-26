@isTest
private class TestForControllerForAccountView {

    @TestSetup private static void CreateTestData()
    {
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 200; i++)
        {
            accList.add(new Account(Name = 'Test account' + i));
        }        
        insert accList;
    }
    
    @isTest private static void TestWrappClass()
    {
        ControllerForAccountView testController = new ControllerForAccountView();
        
        for (Integer i = 0; i < testController.wrappList.size(); i+=2)
        {
            testController.wrappList.get(i).isSelected = true;
        }
        testController.processWrapps(); 
        System.assertEquals(100, testController.MyResults.size());
    }
}