trigger LeadTrigger on Lead (before insert) {
    // aşağıdaki olmasa da olur çünkü yukarda sadece tek bir durum koyduk.
    if (trigger.isBefore && trigger.isInsert){
        for(Lead le : trigger.new){
            if(le.leadSource == 'Web'){
                system.debug('Rating should be Cold');
            }else{
                system.debug('Rating should be hot');
            }
        }
    }    
}   

