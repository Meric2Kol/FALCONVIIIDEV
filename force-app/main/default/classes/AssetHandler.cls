public class AssetHandler {
    public static void AssetHandlerUpdate(List<Asset> assetTriggerNew, 
                                        List<Asset> assetTriggerOld,
                                        Map<id, Asset> assetTriggerNewMap,
                                        Map<id, Asset> assetTriggerOldMap) {
        for(Asset eachAsset : assetTriggerNew){
            if(eachAsset.status !='Shipped'){
                eachAsset.addError('System will only accept Shipped!');
            }
        }        
    }
}