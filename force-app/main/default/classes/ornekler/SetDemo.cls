public with sharing class SetDemo {
    public static void citySet() {
        Set<string> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        
        system.debug('List of cities ' + cities + '.');
    }

    public static set<integer> setFromList(List<integer> intList) {
        Set<Integer> intSet = new Set<Integer>();
        intSet.addAll(intList);
        return intSet;
    }

    public static set<string> capitalizeSet(set<string> setString){
        set<string> capsSet = new set<string>();

        for (string eachStr : setString){
            // use .capitalize method of string
            string tempStr = eachStr.capitalize();
            capsSet.add(tempStr);
        }
        return capsSet;        
    }
}
