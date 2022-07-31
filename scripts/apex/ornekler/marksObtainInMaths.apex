map<string, integer> marksObtainInMaths = new map<string, integer>();
marksObtainInMaths.put('0111CE112', 40);
marksObtainInMaths.put('0111CE102', 19);
marksObtainInMaths.put('0111CE100', 33);
marksObtainInMaths.put('0111CE098', 40);
marksObtainInMaths.put('0111CE100', 33);

system.debug(marksObtainInMaths);

set<string> studentRollNumber = marksObtainInMaths.keySet();
system.debug('Student Roll Numbers are: ' + studentRollNumber);

list<integer> markObtain = marksObtainInMaths.values();
system.debug('All Marks Obtain are ' + markObtain);

set<string>uniqueRolNumberSet = marksObtainInMaths.keySet();
for(string rollNumber : uniqueRolNumberSet){
    string printString = 'Unuque Roll numbers are: ' + rollNumber;
    system.debug(printString);
}

list<integer> marks = marksObtainInMaths.values();
for(integer obtainList: marks){
    system.debug('Mark Obtain list are: ' + obtainList);
}

set<string> result = marksObtainInMaths.keySet();
for(string rollNumber : result){
    integer markObtain2 = marksObtainInMaths.get(rollNumber);
    if(markObtain2<=20){
        system.debug(rollNumber + ' is not qualified for next class');
    }
}