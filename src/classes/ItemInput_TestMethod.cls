@IsTest(SeeAllData=false)
private class ItemInput_TestMethod
{

     static testmethod void testfileupload(){
         PageReference pageRef = new pageReference('/apex/ItemInput');
         Test.setCurrentPage(pageRef);
         Item__c oItem = new Item__c();
         ApexPages.StandardController Controller = new ApexPages.StandardController(oItem);
         ItemInput test2 = new ItemInput(controller);
         test2.oItem.Name = 'Test';
         test2.SaveRecord();
     }
}