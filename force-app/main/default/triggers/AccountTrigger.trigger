trigger AccountTrigger on Account (before insert, after insert) {
    system.debug('===Trigger START===');
    if(Trigger.isBefore){
        system.debug('Before insert trigger.');
    }
    if(Trigger.isAfter){
        system.debug('After insert trigger.');
    }       
    // şu aşağıdakileri öylesine sildik 
    // this should print only in BEFORE
    // system.debug('Before INSERT trigger called');

    // this should print only in AFTER
    // system.debug('After INSERT trigger called');    
    system.debug('===Trigger END===');
}
