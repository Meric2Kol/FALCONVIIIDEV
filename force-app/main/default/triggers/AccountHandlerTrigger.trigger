// before after vs. structer deniyor
trigger AccountHandlerTrigger on Account (before update) {
    if(trigger.isBefore && trigger.isUpdate){
     // parametre metot kullandğımız için 
    AccountHandlerTriggerClass.accountAnnRevValidation(trigger.new, trigger.oldMap);
    }
}