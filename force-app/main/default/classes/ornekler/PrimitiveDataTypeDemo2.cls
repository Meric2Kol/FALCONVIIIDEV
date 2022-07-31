public class PrimitiveDataTypeDemo2 {
    public void print1(){
        // this is method body.
        Id id1 = '0018Z00002f1WRtQAM';
        system.debug('print id= ' + id1);
       
        // Object--> object is a parent class to all primitive data types, objects, custom classeses and everything in apex
        Object obj1= 'This is a string';
        Object obj2= 15;
        Object obj3= '0018Z00002f1WRtQAM';
        Object obj4= true;

        system.debug('obj1= ' + obj1);
        system.debug('obj2= ' + obj2);
        system.debug('obj3= ' + obj3);
        system.debug('obj4= ' + obj4);
    }
}
