interface Show : GLib.Object {
    public abstract string toString();
}

class Person : GLib.Object, Show {
    private string name;
    private int age;

    public Person(string name, int age) {
        this.name = name;
        this.age = age;
    }

    public string toString() {
        return "Name: " + this.name + ", Age: " + this.age.to_string();
    }
}

class Main.App : GLib.Object {
    public static int main(string[] args) {
        var person = new Person("John Doe", 30);
        stdout.printf("%s\n", person.toString());
        return 0;
    }
} 
