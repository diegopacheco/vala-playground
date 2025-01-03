public class Person : Object {

    /* Construction properties */
    public string name { get; construct; }
    public int age { get; construct set; }

    public Person(string name) {
        Object(name: name);
    }

    public Person.with_age(string name, int years) {
        Object(name: name, age: years);
    }

    construct {
        // do anything else
        stdout.printf("Welcome %s\n", this.name);
    }
}

void main(){
    var person1 = new Person("John");
    var person2 = new Person.with_age("Jane", 25);

    stdout.printf("Person1: %s\n", person1.name);
    stdout.printf("Person2: %s\n", person2.name);
}