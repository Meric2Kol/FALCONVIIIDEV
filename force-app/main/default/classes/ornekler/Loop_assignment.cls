public class Loop_assignment {
    public integer factorialValue = 1;

    public Loop_assignment() {
    }

    public integer forLoops(integer n){
        for(integer i = 1; i<=n; i++){
            factorialValue *=i;
        }
        return factorialValue;
    }
    public integer dowhile(integer n){
        integer factorialValue = 1;
        integer j = 1;

        while (j<=n){
            factorialValue = factorialValue * j;
            j++;
        }
        return factorialValue;
    }
}
