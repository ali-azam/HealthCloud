public with sharing class BootstrapModal_Controller {
    string accId;
    public List<Contact> contactList {get; set;}
    public Account acc {get; set;}
    public Contact singleCon {get; set;}
    public BootstrapModal_Controller(ApexPages.StandardController sc){
        acc = [SELECT Id, Name, OwnerId, Type, Website FROM Account WHERE Id =: sc.getId()];
        contactList = [SELECT Id, Email, FirstName, LastName, Phone FROM Contact WHERE AccountId =: acc.Id];
        singleCon = new Contact();
    }
    
    public void addContact(){
        singleCon.AccountId = acc.Id;
        insert singleCon;
        contactList.add(singleCon);        
        singleCon = new Contact();
    }
}
