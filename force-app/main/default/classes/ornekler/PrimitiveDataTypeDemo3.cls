public class PrimitiveDataTypeDemo3 { 
        public void printNewDate() {
            system.debug ('create new date instance');
            Date newDate = Date.newInstance(1993, 1, 1);
            system.debug ('new date is ' + newDate);

            Date newDate2 = Date.newInstance(2022, 5, 25);
            system.debug ('new date2 is ' + newDate2);

            Date todayDate = Date.today();
            system.debug ('today\'s date is ' + todayDate);
        }

        // method to print new TIME instance
        public void printNewTime(){
            // datatype  variable     new instance of time using time class
            //                       .newInstance(hour, minutes, second, milliseconds)

            time myTime = Time.newInstance (18, 20, 2, 30);
            time meTime = Time.newInstance (15, 15, 2, 20);
            
            system.debug ('myTime is ' + myTime);
            system.debug ('myTime is  ' + meTime);
        }
        
        public void printNewDateTime(){
            // datatype  variable     new instance of time using time class
            //                       .newInstance(hour, minutes, second, milliseconds)
            // here we will create new date time instances

            Date newDate = date.today();
            // new time
            Time newTime= Time.newInstance(9, 9, 0, 0);

            // 1. New Datetime from DATE and TIME
            Datetime dt1 = Datetime.newInstance(newDate, newTime);
            system.debug (' dt1 is  ' + dt1);

            // 2. New datetime from YEAR, MONTH, DAY --> time will be midnight

            Datetime dt2 = Datetime.newInstance(2000, 02, 22);
            system.debug (' dt2 is  ' + dt2);
        
            // Datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
            Datetime dt3 = Datetime.newInstance(2000, 02, 22, 8, 0, 0);
            system.debug (' dt3 = ' + dt3);

            // 4. Create newInstance from milliseconds
            // Construct a new datetime using milliseconds since Jan 1 1970 00:00:00 GMT.

            Long longNumber = 0L;
            DateTime dt4 = DateTime.newInstance(longNumber);
            system.debug (' dt4 = ' + dt4);

            Long longNumber2 = 12339874361L;
            DateTime dt4_1 = DateTime.newInstance(longNumber2);
            system.debug (' dt4_1 = ' + dt4_1);

            // 5. create GMT datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND
            DateTime dt5 = DateTime.newInstanceGMT(1998, 1, 28, 18, 2, 3);
            system.debug (' dt5 is = ' + dt5);
            
            //newInstance
       //creates new datetime instance as per user's timezone.
            //displays in GMT
       //newInstanceGMT
       //creates new datetime instace as per GMT - Greenwich mean time
            //displays in GMT

            // 6. current Time
            DateTime dt6 = DateTime.now();
            system.debug (' dt6 is = ' + dt6);

            
        }
}