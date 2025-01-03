using Gee;

class Main.App : GLib.Object {
    public static int main(string[] args) {

        var map = new Gee.HashMap<string, string>();
        map.set("ka", "va");
        map.set("kb", "vb");
        map.set("kc", "vc");

        var keys = map.keys;
        foreach (var key in keys) {
            stdout.printf("%s\n", key.to_string());
        }
        
        return 0;
    }
} 
