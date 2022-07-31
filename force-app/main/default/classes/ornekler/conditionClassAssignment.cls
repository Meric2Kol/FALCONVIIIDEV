public class conditionClassAssignment {
    public string ifClassMethod(integer rank) {
        string outputMonth = '';

        if(rank == 1){
            outputMonth = 'January';
        }else if(rank == 2){
            outputMonth = 'February';
        }else if(rank == 3){
            outputMonth = 'March';
        }else if(rank == 4){
            outputMonth = 'April';
        }else if(rank == 5){
            outputMonth = 'May';
        }else if(rank == 6){
            outputMonth = 'June';
        }else if(rank == 7){
            outputMonth = 'July';
        }else if(rank == 8){
            outputMonth = 'August';
        }else if(rank == 9){
            outputMonth = 'September';
        }else if(rank == 10){
            outputMonth = 'October';
        }else if(rank == 11){
            outputMonth = 'November';
        }else if(rank == 12){
            outputMonth = 'December';
        }else if(rank > 12 || rank < 1){
            outputMonth = 'Not a valid Month';
        }else{
            outputMonth = 'Not a valid Month';
        }
        return outputMonth;
        }

        public string caseMethod(string notQuarter){
            string quarter = '';
            switch on notQuarter{
                when 'January', 'February','March'{
                    notQuarter = 'Quarter1';
                }
                when 'April', 'May', 'June'{
                    notQuarter = 'Quarter2';
                }
                when 'July', 'August', 'September'{
                    notQuarter = 'Quarter3';
                }
                when 'October', 'November', 'December'{
                    notQuarter = 'Quarter4';
                }
                when else{
                    notQuarter = 'Enter a proper Month name';
                }
            }
            return notQuarter;
        }
    }