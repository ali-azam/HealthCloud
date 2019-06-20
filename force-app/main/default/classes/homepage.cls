public with sharing class homepage {
    public List<Patient__c> patlists {get; set;}
    public List<Doctor__c> doclists {get; set;}
    public List<Appointment__c> applists {get; set;}

    public homepage() {
        patlists=[Select Id, Name, Mobile__c, (Select Id,  Name, Appointment_Date__c From Appointments__r) From Patient__c];
        doclists=[Select Id, Name, Mobile__c, (Select Id,  Name, Appointment_Date__c From Appointments__r) from Doctor__c];
        applists=[Select Id, Name, Appointment_Date__c, Patient__c, Doctor__c, Doctor__r.Name, Patient__r.Name from Appointment__c];
    }
}
