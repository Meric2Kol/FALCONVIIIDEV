public class SetDemo2 {
    public static set<string> capitalizeSetString(set<string> stringSet) {
        set<string> capsSet = new set<string>();

        for (string eachStr : stringSet) {
            string tempStr =eachStr.toUpperCase();
            capsSet.add(tempStr);
        }
        return capsSet;
    }
}
