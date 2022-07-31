public class String_Assignment {
    public void freshAssigment (){
        string localString = 'Thanks for the session on the string';

        // 1. length of string
        integer lengthOfStr = localString.length();
        system.debug('length of localString is ' + lengthOfStr);

        // 2. convert to capital
        string localStringInCaps = localString.toUpperCase();
        system.debug('in caps = ' + localStringInCaps);

        // 3.1. contains 'session'
        string ses = 'session';
        boolean containSession1 = localString.contains(ses);
        system.debug('contain session? ' + containSession1);

        // 3.2. contains 'sessions'
        string sessi = 'sessions';
        boolean containSession2 = localString.contains(sessi);
        system.debug('contain sessions? ' + containSession2);

        // 3.3. contains case 'SESSION'
        // when it comes to string, session is case sensitive.
        boolean containSession3 = localString.contains('SESSION');
        system.debug('contain SESSION? ' + containSession3);
    }
}
