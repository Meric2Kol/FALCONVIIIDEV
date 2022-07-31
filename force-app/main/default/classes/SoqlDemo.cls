public class SoqlDemo {
    public static void accountSOQL_1(){
        // SOQL  query returns LIST<sObject>
        List<Account> listAcc = [Select Id, name, Active__c from Account WHERE name like '%A%'];
        system.debug('listAcc = ' + listAcc);
        system.debug('Size of listAcc = ' +  listAcc.size());

        // If we fetch ONLY 1 record, we can store it in 'Account' instead of LIST<account>

        Account acc = [select name, CreatedDate from Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('Last created account record = ' + acc);        
    }

    public static void accountSOQL_2(){
        Account acc = [select name, CreatedDate, phone, AccountNumber from Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug('Last created account record = ' + acc);

        string accountName = acc.Name;
        string accountPhone = acc.Phone;

        system.debug('Account name is ' + accountName + ', phone is ' + accountPhone);
        system.debug('Account number is ' + acc.AccountNumber);
    }

    public static void accountSOQL_3(){
        // SOQL can return only sObject if it is returning ONLY 1 RECORD
        List<Account> listAcc = [Select Id, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate desc];

        system.debug('All accounts ' + listAcc);
        // Datatype same as LIST
        for(Account eachAccount : listAcc){
            string accName = eachAccount.Name;
            string accPhone = eachAccount.Phone;

            system.debug('accName = ' + accName + ', phone is ' + accName);
            system.debug('account number is ' + eachAccount.AccountNumber);
        }
    }

    public static void accountSOQL_Filter(string accNameFilter){
            List<Account> listAcc= [select name, phone FROM Account WHERE name = : accNameFilter];
            system.debug('Filtered accounts are ' + listAcc);
        }
}