// map(collection)
    // key dadatype
// value dataType   variable name   new instance of same type of map

map<string, string> mapCntCurrency = new map<string, string>();

// datatype of key and value should match what we have initialized
// variablename.put(key, value)

mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('France', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee');
mapCntCurrency.put('Turkey', 'Lira');
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Germany', 'Euro');

// aşağıdaki bir çağırma şekli
string IndiaCurrency = mapCntCurrency.get('India');

// aşağıdaki yukardakinden farklı çağırma şekli
string country = 'Turkey';
string TurkeyCurrency = mapCntCurrency.get(country);

system.debug(mapCntCurrency);
system.debug('India currency = ' + IndiaCurrency + '.');
system.debug('Turkey currency = ' + TurkeyCurrency + '.');


// fetch all country
set<string> countrySet = mapCntCurrency.keySet();
system.debug('Countries in map: ' + countrySet + '.');

list<string> currencies = mapCntCurrency.values();
system.debug('Currecies in map: ' + currencies + '.');


set<string> countriesSet = mapCntCurrency.keySet();
// for loop on KEY SET
// for(string each key:   mapCntCurrency.keySet()) -> we can also write this
for(string eachKey: countriesSet){
    string printString = 'Country is ' + eachKey + '.';
    string eachCurrency = mapCntCurrency.get(eachKey);
    system.debug(printString);

    // sanırım bu ikinci yol
    // printString += ', its currency is ' + eachCurrency;
    
    // fetch value(currency) for each KEY(country)
    string eachValue = mapCntCurrency.get(eachKey);
    printString = printString + ', its currency is ' + eachValue;
    system.debug(printString);
    
    
}
