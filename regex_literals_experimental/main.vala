class Main.App : GLib.Object {
    public static int main(string[] args) {
        
        var r = /(foo|bar|cow)/;
        var o = r.replace ("this foo is great", -1, 0, "thing");
        print ("%s\n", o);

        return 0;
    }
} 
