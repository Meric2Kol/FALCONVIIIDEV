public class Humans {
    public String fullName(string firstName, string lastName){
        string fullName = '';
        fullName = firstName.toUpperCase();
        fullName += ' ' + lastName.toUpperCase();
        return fullName;
    }

    public integer age(date birthdate){
        integer d = 0;
        date today = date.today();
        integer daysAge = birthdate.daysBetween(today);
        d = integer.valueOf(daysAge/365);
        return d;
    }
}
