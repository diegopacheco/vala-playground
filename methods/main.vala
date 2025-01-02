class Main.App : GLib.Object {
    public static int main(string[] args) {
        int result = sum(1, 2);
        stdout.printf("Result is %i\n", result);
        return 0;
    }
    private static int sum(int va, int vb) {
        return va + vb;
    }
} 
