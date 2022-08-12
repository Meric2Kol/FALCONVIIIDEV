trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    //Soru : Yeni bir Contact create edilip bir Accounta bağlandığında, Accounta bağlı bir Contact delete edildiğinde veya Bir Contact update edilerek bir Account ile bağlantısı kesilirse, bir Accounta bağlanırsa ya da bağlantı değişirse Accountta Number_of_Contacts__c fieldi güncellenecek..

    // Etkilenen Accountların id lerini toplayacağım bir şiste oluşturuyorum..
    set<id> accIds = new Set<Id>();

    if (trigger.isAfter) {
        if (trigger.isInsert || trigger.isUndelete) {
            for (contact cn : trigger.new) {
                if (cn.accountId != null) {
                    accIds.add(cn.accountId);
                }
            }
        }

        if (trigger.isUpdate) {
            for (contact cn : trigger.new) {
                if (cn.accountId != trigger.oldmap.get(cn.id).accountId) {
                    accIds.add(cn.accountId);
                    accIds.add(trigger.oldmap.get(cn.id).accountId);
                }
            }
        }

        if (trigger.isDelete) {
            for (contact cn : trigger.old) {
                if (cn.AccountId != null) {
                    accIds.add(cn.AccountId);
                }
            }
        }

        if (!accIds.isEmpty()) {
            List<Account> accList = [ select id, name, 	Number_Of_Contacts__c, (select id from contacts) from Account where id in : accIds ];
            for (Account acc : accList) {
                acc.Number_Of_Contacts__c = acc.contacts.size();
            }
            update accList;
        }
    }
    
    
    
    // addError metodu trigger.isBefore eventinde çalıştırılır..

    /*1. Contact'larda Lead Source field'ı 'Partner Referral' ise contact'ın update edilmesine izin verme..
        Soru: Hangi event'de?
        Soru: Kodu nasıl oluşturmalıyız?*/
    // if (trigger.isBefore && trigger.isUpdate) {
    //     for (contact con : trigger.new) {
    //         if (trigger.oldMap.get(con.id).leadSource == 'Partner Referral') {
    //             con.addError('Bu contactı değiştiremezsin..');
    //             // hata mesajını genel görürürüz..
    //         }
    //     }
    // }

    //2. Kullanıcının Lead Source'u update yapmasına izin verme.
    // if (trigger.isBefore && trigger.isUpdate) {
    //     for (contact cn : trigger.new) {
    //         if (cn.leadSource != trigger.oldMap.get(cn.id).leadSource) {
    //             cn.leadSource.addError('Bu recordun lead source ni değiştiremezsin..');
    //             // hata mesajını ilgili fieldin altında görürürüz..
    //         }
    //     }
    // } 
    
}