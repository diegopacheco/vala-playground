
class Main.App : GLib.Object {

    double multiply(int x, double d)
        requires (x > 0 && x < 10)
        requires (d >= 0.0 && d <= 1.0)
        ensures (result >= 0.0 && result <= 10.0)
    {
        return d * x;
    }

    public static int main(string[] args) {
        var Main = new Main.App();
        var result = Main.multiply(5, 0.5);
        print("Result: %f\n", result);

        //Main.multiply(-1, 11); // ** (process:2074777): CRITICAL **: 22:47:58.061: main_app_multiply: assertion 'x > 0 && x < 10' failed
        return 0;
    }
} 
