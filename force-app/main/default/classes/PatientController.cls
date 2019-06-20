public with sharing class PatientController {
    public Patient__c p {get; set;}
    
    public PatientController() {
        p = new Patient__c();
    }

    public PageReference save() {
        return null;
    }

    public PageReference saveandnew() {
        insert p;

        PageReference PageRef = new PageReference('/apex/patients');
        p.clear();
        return PageRef;
    }
}
