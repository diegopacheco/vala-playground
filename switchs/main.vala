class Main.App : GLib.Object {
    public static int main(string[] args) {
        int a = 2;
        switch (a) {
            case 1:
                stdout.printf("one\n");
                break;
            case 2:
            case 3:
                stdout.printf("two or three\n");
                break;
            default:
                stdout.printf("unknown\n");
                break;
            }
        return 0;
    }
} 
