public class Datetime_Assignment {
    public void diffofDate() {
        Date varTomorrowDate = Date.newInstance(2022, 7, 14);
        system.debug ('Tomorrow\'s date: ' + varTomorrowDate);

        Date varTodaysDate = Date.newInstance(2022, 7, 13);
        system.debug ('Today\'s date: ' + varTodaysDate);

        integer daysDiff = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug ('Day\'s between: ' + daysDiff);
    }
    public void timeCheck(){
        Datetime varTomorrowDatetime = Datetime.newInstanceGmt(2022, 07, 14, 7, 0, 0);
        system.debug('TomorrowDatetime: ' + varTomorrowDatetime);

        Datetime var10DaysDatetime = Datetime.newInstanceGmt(2022, 7, 23, 9, 0, 0);
        system.debug('10DaysDatetime: ' + var10DaysDatetime);

        Long varDatetimeLong = 12339874361L;
        Datetime newLong = Datetime.newInstance(varDatetimeLong);
        system.debug(newLong);

        Datetime newTomorrowDateTime = varTomorrowDatetime.addDays(7);
        system.debug(newTomorrowDateTime);

        Datetime new10DaysDatetime = var10DaysDatetime.addDays(10);
        system.debug(new10DaysDatetime);
    }
}
