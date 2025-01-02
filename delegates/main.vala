class Main.App : GLib.Object {

    delegate void DelegateType(int a);

    void callAndPass(DelegateType del, int arg) {
        del(arg); // Calling a delegate
    }

    void func(int a) {
        stdout.printf("delegate func - value is : %i\n", a);
    }

    public static int main(string[] args) {
        
        var app = new Main.App();
        app.callAndPass(app.func, 42); // Passing a delegate

        return 0;
    }
} 
