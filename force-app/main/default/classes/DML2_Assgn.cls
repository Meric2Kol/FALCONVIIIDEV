public class DML2_Assgn {
    public static void insert_dml() {
        List<Account> insertRecord = new List<Account>();
        Account newInsert1 = new Account();
        newInsert1.name = 'Meric\'s Assignment1';
        insertRecord.add(newInsert1);

        Account newInsert2 = new Account();
        newInsert2.name = 'Meric\'s Assignment2';
        insertRecord.add(newInsert2);

        Account newInsert3 = new Account();
        newInsert3.name = 'Meric\'s Assignment3';
        insertRecord.add(newInsert3);

        insert insertRecord;
    }
    public static void updating_dml() {
        List<Account> listAccount = [SELECT Name FROM Account WHERE Name like '%Assignment%'];
        List<Account> updateAccount = new List<Account>();
        for(Account updateRecord : listAccount){
            updateRecord.name = updateRecord.name + 'Assigment updation';
            updateAccount.add(updateRecord);
        }
        update updateAccount;
    }
}
