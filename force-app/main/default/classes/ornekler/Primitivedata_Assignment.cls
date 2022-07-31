public class Primitivedata_Assignment {
    public void Primitivedata_Assignment() {
        id accountId = '0038Z00002tDwrYQAS';
        string description = 'The following Id belongs to Accouts: ';
        boolean isCorrect = true;

        // writing 3 variables separately
        system.debug('Writing 3 variables separately');
        system.debug('description');
        system.debug('accountId');
        system.debug('true');

        // writing 3 variables by trying to club
        system.debug('');
        system.debug('Writing 3 variables by trying to club');
        system.debug(description + accountId + ', and ' + isCorrect);

    }
}
