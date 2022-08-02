public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        //1. creating new instance of account sObject
        Account acc = new Account();

        

        // 2. set field values
        acc.Name = 'SoftInnovas';
        // Always require a value in this field in order to save a record
        // yukardaki seçenek org ta tıklanmış ise aşağıdaki kod ile yazdırılabiliyor.
        // aksi takdirde hata veriyor.
        acc.Active__c = 'Yes';
        system.debug(acc);


        // 3. set few other fields here...

        // 4. NOW comes the DML
        insert acc; // BOOOOOOM...
        // print it.
        system.debug(acc);
    }

    public static void dmlInsertDemo_cstObj() {
        salesforce_project__c sp = new salesforce_project__c();
        sp.project_name__c = 'Teach DML to falcons';
        sp.description__c = 'All 40% are great learners';
        insert sp;
        system.debug(sp);        
    }
}