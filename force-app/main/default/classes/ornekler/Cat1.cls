public class Cat1 {
    public string name = '';
    public string color = '';
    //this is constructor
    public Cat1() {
        system.debug('constructor called.');
    }

    public Cat1(string nm, string clr){
        name = nm;
        color = clr;
        sleeping();
    }

    public void sleeping(){
        system.debug(name + ' is sleeping');
    }
}