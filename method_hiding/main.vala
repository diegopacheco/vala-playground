class Foo : Object {
    public void my_method() { 
        print("Foo.my_method\n");
    }
}

/*
 * By using the new modifier you can hide an inherited method
 * with a new method of the same name. The new method may have
 * a different signature. Method hiding is not to be confused
 * with method overriding, because method hiding does not
 * exhibit polymorphic behaviour.
*/
class Bar : Foo {
    public new void my_method() { 
        print("Bar.my_method\n");
    }
}

void main() {
    var bar = new Bar();
    bar.my_method();
    (bar as Foo).my_method();
}