class Main.App : GLib.Object {
    public static int main(string[] args) {
        for (int a = 0; a < 10; a++) { 
            stdout.printf("%d\n", a); 
        }
        stdout.printf("Hello World\n");
        return 0;
    }
} 
