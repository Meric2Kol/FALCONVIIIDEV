public class DmlDemo3 {
    public static void dmlMultipleRecordUpdate(){
        //update multiple account
        //add all the accounts which we want to update in this list
        List<Account> updateAccounts = new list<Account>();
        //fetch all account
        List<Account> listAccount = [Select name from Account];
        for(Account eachAccount : listAccount){
            eachAccount.Name += ' via B.0';
            updateAccounts.add(eachAccount);
        }
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }else{
            system.debug('NO ACCOUNTS TO UPDATE.');
        }
    }
}
