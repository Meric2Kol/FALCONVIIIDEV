trigger OpportunityTrigger on Opportunity (before insert, after insert, before update, after update) {
    //soru: Bir opportunitynin stage Name i update edildiğinde closed lost olarak değiştirildiğinde Description da 'çok üzgünüz' mesajını yazdırsın. closed won olarak değiştirildiğinde 'yaşasın' mesajı yazdırsın. Prospecting olarak değiştirilmek istendiğinde izin verme hata mesajı olarak 'süreci başa döndüremezsiniz..' mesajını ver. 
    if (trigger.isBefore && trigger.isUpdate) {
        for (opportunity op : trigger.new) {
            // eğer StageName de değişiklik var ise
            if (op.stageName != trigger.oldMap.get(op.id).stageName) {
                if (op.stageName == 'Closed Lost') {
                    op.Description = 'Çok üzgünüz..';
                }
                if (op.stageName == 'Closed Won') {
                    op.Description = 'Yaşasın..';
                }
                if (op.stageName == 'Prospecting') {
                    op.addError('süreci başa döndüremezsiniz..');
                    //op.stageName.addError('süreci başa döndüremezsiniz..');
                }
                // burada ise Closed Won olanı değiştirememe durumu oluyor.
                if(trigger.oldMap.get(op.id).stageName == 'Closed Won'){
                    op.addError('Değiştiremezsiniz!');
                }
            }
        }
    }
}