public class DML_Account_Assignment {
    public static void DMLAccount() {
        Account dmlAcc = new Account();
        dmlAcc.Name = 'Testdata';
        insert dmlAcc;
        system.debug(dmlAcc);        
    }

    public static void SalesforceProject() {
        Salesforce_Project__c dmlAcc2 = new Salesforce_Project__c();
        dmlAcc2.Description__c = 'Meric Ikikol';
        dmlAcc2.Project_Name__c = 'DML';
        insert dmlAcc2;
        system.debug(dmlAcc2);
    }
}