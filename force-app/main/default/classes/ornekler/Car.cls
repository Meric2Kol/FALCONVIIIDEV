public class Car {
    // class starts here    
    public string carColor = '';
    public string carName = '';
    //if we do not write access modifier, by default it is private.

    private integer maxSpeedKmPerHr = 150;
    public void switchOn(){
        //method body
        // metod içinde public yazmaya izin vermiyor.
        // public local değer olduğu için public olarak yazılamıyor.
        // örneği aşağıda
        // public string carDate = 'just some variable';
        
        // Ancak bu şekilde yazılabiliyor.
        string carDate = 'just some variable';
        system.debug('starting the car');
    }
    public void drive(){
        system.debug('driving ' + carName);        
    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving' + carName + 'at' + maxSpeedKmPerHr + 'km/h';
        system.debug(drivingDescription);
    }
    // class ends here. Thats means here.
}