public with sharing class AppointmentController {
    public Appointment__c a {get; set;}

    public AppointmentController() {
        a = new Appointment__c();
    }

    public pagereference save(){
        return null;
    }
    
    public pagereference saveandnew(){
        insert a;

        pagereference pageref =new PageReference('/apex/Appointments');
        a.clear();
        return pageref;
    }

}
