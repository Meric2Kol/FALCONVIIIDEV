public class AccountHandlerTriggerClass {
    // accTriggerNew ve diğeri sadece isim verdik.
    public static void accountAnnRevValidation(List<Account> accTriggerNew, map<Id, Account> accTriggerOldMap) {
        
        for(Account newAcc : accTriggerNew){
            Account oldAcc = accTriggerOldMap.get(newAcc.id);
            if (newAcc.AnnualRevenue != oldAcc.AnnualRevenue || newAcc.AnnualRevenue == null) {
                newAcc.addError('Annual Revenue for an account cannot be reduced or cannot be left empty.');
            }
        }        
    }
}
