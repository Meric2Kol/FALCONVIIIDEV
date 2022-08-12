trigger AssetTrigger on Asset (before insert, before update) {
    if(trigger.isBefore){
        AssetHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}