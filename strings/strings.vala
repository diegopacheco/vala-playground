class Main.App : GLib.Object {
    public static int main(string[] args) {
        string greeting = "hello, world";
        string s1 = greeting[7:12];        // => "world"
        string s2 = greeting[-4:-2];       // => "or"
        stdout.printf(s1 + "\n");
        stdout.printf(s2 + "\n");
        return 0;
    }
}
