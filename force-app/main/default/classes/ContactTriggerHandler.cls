public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, 
                                                Map<id, contact> conTriggerNewMap,
                                                List<contact> conTriggerOld, 
                                                Map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            //oldContact --> older value of LeadSource. If old value is Partner Referral, then DON't ALLOW
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');//it will add validation.
            }
        }
    }
    public static void contactUpdateValidation2(List<contact> conTriggerNew, 
                                                Map<id, contact> conTriggerNewMap,
                                                List<contact> conTriggerOld, 
                                                Map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            id contactId = eachContact.id;
            Contact oldContact = conTriggerOldMap.get(eachContact.Id);
            if(eachContact.LeadSource != oldContact.LeadSource){
                eachContact.leadsource.addError('CANNOT UPDATE LEAD SOURCE. PLEASE!!!');
            }
        }
    }
    public static void contactUpdateValidation2(List<contact> accTriggerNew, 
                                                Map<id, contact> accTriggerNewMap,
                                                List<contact> accTriggerOld, 
                                                Map<id, contact> accTriggerOldMap){
        List<Contact> listContact = new List<Contact>();
        for(Account eachAccount : accTriggerNew){
            Contact cont = new Contact();
            cont.AccountId = eachAccount.Id;
            cont.LastName = eachAccount.Name;
            listContact.add(cont);
        }
        if(!listContact.isEmpty())
        insert listContact;
    }
}