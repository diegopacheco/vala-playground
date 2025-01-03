class Main.App : GLib.Object {
    public static int main(string[] args) {

        int a = 20;
        int b = 30;
        int c = 35;
        int d = 200;

        if (0 < a < b < c < d < 255) {
            stdout.printf("All Good\n");            
        }else{
            stdout.printf("Nope!\n");
        }

        return 0;
    }
} 
