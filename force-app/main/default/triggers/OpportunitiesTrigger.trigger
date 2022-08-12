trigger OpportunitiesTrigger on Opportunity (after update) {
    if(trigger.isAfter && trigger.isUpdate){
        for(Opportunity eachOpp : trigger.new){
            system.debug('Opportunity Name updated : ' + eachOpp.Name + '.');
            system.debug('Opportunity Amount updated : ' + eachOpp.Amount + '.');
        }
        for(Opportunity eachOppOld : trigger.old){
            system.debug('Opportunity old Name  : ' + eachOppOld.Name + '.');
            system.debug('Opportunity old Amount  : ' + eachOppOld.Amount + '.');
        }
        for(Opportunity stgNm : trigger.new){
            if(stgNm.StageName != trigger.oldMap.get(stgNm.id).StageName){
                system.debug('StageName of an opportunity is updated' + stgNm.Description + ' ' + stgNm.Name + '.');
            }
        }
    }    
}