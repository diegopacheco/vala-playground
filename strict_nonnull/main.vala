class Person {
    public string name = "John Doe";
}

class Main.App : GLib.Object {
    public static int main(string[] args) {
        
        Person  o1  = new Person();   // not nullable
        Person? o2  = null;           // nullable

        stdout.printf("o1: %s\n", o1.name);
        stdout.printf("o2: %s\n", o2?.name);

        return 0;
    }
} 
