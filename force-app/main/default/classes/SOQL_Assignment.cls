public class SOQL_Assignment {
    public static void soql_WhereClause() {
        list<contact> contactList = [Select lastName from contact where lastName like '%A%'];
        system.debug('Contact lists are: ' + contactList + '.');
        system.debug('Contact size: ' + contactList.size() + '.');        
    }
    public static void soql_formethod() {
        list<contact> contactList2 = [Select lastName, phone from contact];
        for(contact eachContact : contactList2){
            string contLastName = eachContact.lastName;
            string contPhone = eachContact.phone;
            system.debug('Contact last name is ' + contLastName + ', phone is, ' + contPhone + '.');
        }
    }
}
