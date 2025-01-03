interface Foo {
    public abstract int m();
}
 
interface Bar {
    public abstract string m();
}
 
class Cls: Foo, Bar {
    public int Foo.m() {
        return 10;
    }

    public string Bar.m() {
        return "bar";
    }
}
 
void main () {
    var cls = new Cls();
    message("%d %s", ((Foo) cls).m(), ((Bar) cls).m());
}