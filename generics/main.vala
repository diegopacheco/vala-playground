public class Wrapper<G>: GLib.Object {
    public G data { get; set; }
}

void main () {
    var w = new Wrapper<string>();
    w.data = "test";
    stdout.printf(w.data);
}