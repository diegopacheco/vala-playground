class Main.App : GLib.Object {
    public static int main(string[] args) {
        int a = 10;
        if (a > 0) { 
            stdout.printf("a is greater than 0\n"); 
        } else if (a < 0) { 
            stdout.printf("a is less than 0\n"); 
        } else { 
            stdout.printf("a is equal to 0\n"); 
        }
        return 0;
    }
} 
