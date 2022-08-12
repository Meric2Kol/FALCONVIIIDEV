public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, 
                                        List<account> accTriggerOld,
                                        Map<id, account> accTriggerNewMap,
                                        Map<id, account> accTriggerOldMap) {
    for (Account eachAcc : accTriggerNew) {
         //when inserted
        boolean updateDesc = false;
         //in insert oldMap is NULL so. If OLDMAP is NULL then INSERT.
        if(accTriggerOldMap == null && eachAcc.Active__c == 'Yes'){
            updateDesc = true;
        }
         //when updated. If OLDMAP is NOT NULL then UPDATE
        if(accTriggerOldMap != null){
            map<id, account> triggerOldMap = accTriggerOldMap;
            Account oldAccount = triggerOldMap.get(eachAcc.Id);
            Account newAccount = eachAcc;
            if(newAccount.Active__c == 'Yes' && newAccount.Active__c != oldAccount.Active__c){
                updateDesc = true;
            }
        }
        if(updateDesc){
            eachAcc.Description = 'Account is now active. Enjoy!!!!!';
            }
        }
    }

    public static void updateVIPForAllContacts(List<account> accTriggerNew, 
                                                List<account> accTriggerOld,
                                                Map<id, account> accTriggerNewMap,
                                                Map<id, account> accTriggerOldMap) {
        // get set of account ids where ONLY VIP field is updated
        set<id> setAccIDs = new set<id>();
        for(Account eachAcc : accTriggerNew){
            // check if VIP field is updated
            if(eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c){
                setAccIDs.add(eachAcc.id);
            }
        }
        List<Contact> listContacts = [SELECT Id, Name, Account.Id, VIP__c FROM Contact WHERE Account.Id in :setAccIDs];

        // NOW we want to update CONTACTS records
        for(Contact eachContact : listContacts){
            // fetsh VIP field of account for this Contact
            // if account's VIP is false, we get false, if true, we will get true here.
            boolean accVIP = accTriggerNewMap.get(eachContact.Account.Id).VIP__c;
        }
        // UPDATE list Contacts.
        Update listContacts;
    }
}