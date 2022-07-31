public class SoqlDemo2 {
    public static void childToParent_Soql1(){
        // querying on child returns list<child_sObject>
        List<Contact> listCnt = [Select id, name, Account.Name, Account.industry FROM Contact WHERE Account.Industry = 'Energy'];

        for(Contact eachContact : listCnt){
            // access parent's field name using same dot operation
            string accName = eachContact.Account.Name;
            system.debug('Contact name is ' + eachContact.Name + ', its acc is ' + accName);            
        }
    }

    public static void sampleSoql4(){
        list<account> accountWithOpps = [select name, annualrevenue, (select amount, name from Opportunities where stageName = 'Closed Won')
        from account where type ='Customer - Direct'];

        for(account eachAccount : accountWithOpps){
            system.debug('account name: ' + eachAccount.Name + ', and its revenue is ' + eachAccount.AnnualRevenue);
            // we want to fetch all opportunities in each account
            List<Opportunity> listOpp = eachAccount.Opportunities;
            for(Opportunity eachOpp : listOpp){
                system.debug('Opp Name: ' + eachOpp.Name + ', amount is ' + eachOpp.Amount);
            }
            system.debug('----------------');
        }
    }
}
