@IsTest(SeeAllData=false)
private class ImportItems_TestMethod
{

     static testmethod void testfileupload(){
         String sTextFileData;
         sTextFileData = 'Item Name' + ',' + 'Active' + ',' + 'Location';
         sTextFileData = sTextFileData + '\n';
         sTextFileData = sTextFileData + 'TestContent' + ',' + 'Yes' + ',' + 'Test';
         Blob bFile = Blob.valueOf(sTextFileData);
         ImportItems testUpload = new ImportItems();
         testUpload.contentFile= bFile;
         testUpload.ReadFile();
         testUpload.getuploadedItems();
         System.assertNotEquals(testUpload.lData.size(), 0);
     }
}