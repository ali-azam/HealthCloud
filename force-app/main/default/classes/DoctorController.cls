public with sharing class DoctorController {
    public Doctor__c d {get; set;}
    
    public DoctorController() {
        d = new Doctor__c();
    }

    public PageReference save() {
        return null;
    }

    public PageReference saveandnew() {
        insert d;

        PageReference PageRef = new PageReference('/apex/Doctors');
        d.clear();
        return PageRef;
    }

}
