public class Person {
    private string name;
    private int age;
    
    public Person(string name, int age) {
        this.name = name;
        this.age = age;
    }

    public void print() {
        stdout.printf("Name: %s, Age: %d\n", name, age);
    }
}

class Main.App : GLib.Object {

    public static int main(string[] args) {

        Person* o = new Person("John Doe",50);
        o->print();
        delete o;

        return 0;
    }
} 
