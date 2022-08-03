/*trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    if(Trigger.isBefore){
        system.debug('BEFORE TRigger');
        if(trigger.isInsert){
            system.debug('Before INSERT Trigger');
        }
        if(trigger.isUpdate){
            system.debug('Before UPDATE Trigger');
        }
    }
    
    if(Trigger.isAfter){
        system.debug('AFTER Trigger');
        if(trigger.isInsert){
            system.debug('After INSERT Trigger');
        }
        if(trigger.isUpdate){
            system.debug('After UPDATE Trigger');
        }
    }
}
*/

trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
    system.debug('=====Trigger START=====');
    if(trigger.isAfter){
        system.debug('after trigger trigger.new = ' + trigger.new);
    }
    system.debug('=====Trigger END=====');
}