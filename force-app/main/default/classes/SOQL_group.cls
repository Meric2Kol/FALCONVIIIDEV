public class SOQL_group {
    public static void avrgSoql1() {
        AggregateResult[] avrgSoql_a = [SELECT AVG(NumberOfEmployees) FROM Account];
        system.debug('Number of employees avarage is ---> ' + avrgSoql_a[0].get('expr0'));
    }

    public static void avrgSoql2() {
        AggregateResult[] avrgSoql_b = [SELECT Industry, AVG(NumberOfEmployees) FROM Account GROUP BY Industry];
        system.debug('Number of employees and group by Industry is ---> ' + avrgSoql_b[0].get('expr0'));        
    }

    public static void avrgSoql3() {
        AggregateResult[] avrgSoql_c = [SELECT Industry, AVG(NumberOfEmployees) FROM Account GROUP BY Industry];
        system.debug('Max of the field number of  employees is ---> ' + avrgSoql_c[0].get('expr0'));
        for(AggregateResult max : avrgSoql_c){
            system.debug(max);
        }
    }

    public static void avrgSoql4() {
        list<Contact> avrgSoql_d = [SELECT Account.id, Account.Name FROM Contact];
        for (Contact eachContact : avrgSoql_d){
            system.debug(eachContact);
        }

        list<Account> avrgSoql5 = [SELECT name, (SELECT Id, name FROM Contacts) FROM Account];
        for(Account eachAccount : avrgSoql5){
            system.debug('Contact name is ' + eachAccount);
            for(Contact eachContact : eachAccount.Contacts){
                system.debug('Contact name is ' + eachContact);
            }
        }
    }
}
