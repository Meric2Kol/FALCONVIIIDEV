trigger CaseTrigger on Case (before insert) {
        // for(Case csOrg : trigger.new){
        //     // update de old map kullanalım.
        //     // yeni bilginin orijini ile yeni orijini eşit değil ise
        //     // EN İYİ KARŞILAŞTIRMA BÖYLE YAPILIYOR
        //     if(csOrg.Origin != trigger.oldMap.get(csOrg.Id).Origin){
        //         system.debug('Case origin is changed for ' + csOrg.CaseNumber);
        //     }
        // }
        
        for(Case cs : trigger.new){
            if(cs.Origin == 'Email'){
                cs.Status = 'New';
                cs.Priority = 'Medium';
            }
        }
    }    

