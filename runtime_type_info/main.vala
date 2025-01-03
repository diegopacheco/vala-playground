class SomeTypeName : GLib.Object {
    // TODO: Implement the SomeTypeName class
}

class Foo : GLib.Object {
    // TODO: Implement the Foo class
}

class Main.App : GLib.Object {
    public static int main(string[] args) {

        SomeTypeName object_instance = new SomeTypeName();
        bool b = object_instance is SomeTypeName;

        Type type1 = object_instance.get_type();
        stdout.printf("%s\n", type1.name());

        Type type2 = typeof(Foo);
        Foo foo = (Foo) Object.new(type2);

        return 0;
    }
} 
