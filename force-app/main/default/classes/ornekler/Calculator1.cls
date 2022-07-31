public class Calculator2 {
    public String printAndReturnMessage(string msg){
        system.debug('in the method');
        system.debug('parameter value is ' + msg);
        string r = msg + '...OK Cool';
        //to return we use keywork 'return'
        return r;
    }

    public integer add(integer num1, integer num2){
        integer sum = num1 + num2;
        return sum;
    }

        public integer add(integer num1, integer num2, integer num3){
        integer sum = num1 + num2 + num3;
        return sum;
    }
}