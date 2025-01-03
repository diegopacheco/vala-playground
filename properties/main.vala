class Person : Object {
    private int _age = 32;  // underscore prefix to avoid name clash with property

    /* Property */
    public int age {
        get { return _age; }
        set { _age = value; }
    }
}

class Main.App : GLib.Object {
    public static int main(string[] args) {
        var person = new Person();
        stdout.printf("Person age: %d\n", person.age);

        person.age += 2;
        stdout.printf("Person age: %d\n", person.age);

        return 0;
    }
} 
