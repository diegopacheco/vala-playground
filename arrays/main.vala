class Main.App : GLib.Object {

    public static int main(string[] args) {
        
        int[] a = new int[10];
        int[] b = { 2, 4, 6, 8 };
        int[] c = b[1:3]; 

        print_array(a);
        print_array(b);
        print_array(c);

        int[] e = {};
        e += 12;
        e += 5;
        e += 37;
        print_array(e);

        return 0;
    }

    private static void print_array(int[] arr) {
        stdout.printf("Printing Array:\n");
        foreach (int i in arr) {
            stdout.printf("%d ", i);
        }
        stdout.printf("\n");
    }

} 