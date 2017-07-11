Public with Sharing Class ItemInput{
    Public Item__c oItem{get;set;}
    Public ItemInput(ApexPages.StandardController controller){
    oItem = new Item__C();   
    }
    
    Public PageReference SaveRecord(){
		/*Try{
		}
		Catch(Exception e){
		}*/
        Insert oItem;
        PageReference Master = new PageReference('/' + oItem.Id);
        return Master;
    }
	
}