/*
 * ‘out’ from the caller side
 * you may pass an uninitialised variable to the method and you may expect it to be initialised after the method returns
 *  
 * ‘out’ from callee side
 * the parameter is considered uninitialised and you have to initialise it
 * 
 * ‘ref’ from caller side
 * the variable you’re passing to the method has to be initialised and it may be changed or not by the method
 *  
 * ‘ref’ from callee side
 * the parameter is considered initialised and you may change it or not
 *
*/

static void method_1(int a, out int b, ref int c) {
    stdout.printf("a = %d - b = %d - c = %d\n", a, b, c);
}
static void method_2(Object o, out Object p, ref Object q) {
    stdout.printf("o = %p - p = %p - q = %p\n", o, p, q);
}

class Main.App : GLib.Object {
    public static int main(string[] args) {
        int a = 1;
        int b;
        int c = 3;
        method_1(a, out b, ref c);

        Object o = new Object();
        Object p;
        Object q = new Object();
        method_2(o, out p, ref q);

        return 0;
    }
} 
