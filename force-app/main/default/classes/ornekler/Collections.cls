public class Collections {
    public static string monthList(integer i) {
        list<string> LstMonth = new list<string>();
        string outputMonth;
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');

        integer sizeOfLstMonth = LstMonth.size();
        if(i > 0 && i < sizeOfLstMonth){
            outputMonth = LstMonth [i-1];
        }else{
            outputMonth= 'Not a valid month.';
        }
        return outputMonth;
    }
}