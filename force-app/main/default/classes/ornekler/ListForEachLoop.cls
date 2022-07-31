public class ListForEachLoop {
    public static void iterateListInteger(){
        List<Integer> integerList = new List<integer>();
        integerList.add(10);
        integerList.add(15);
        integerList.add(21);
        integerList.add(15);
        integerList.add(15);
        system.debug('List of random integers = ' + integerList);

        for (integer eachInteger : integerList) {
            system.debug(eachInteger);
        }
    }

    public static integer add(List<integer> listInt) {
        integer returnInt = 0;

            for (integer eachInteger : listInt) {
                returnInt = returnInt + eachInteger;
                // r = 0 + 10   index   0
                // r = 10 + 15          1
                // r = 25 + 21          2
                // r = 46 + 15          3
                // r = 61 + 15          4     
            }
        
        // r = 76
        return returnInt;
    }
}
