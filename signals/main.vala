public class SignalsMain : GLib.Object {

    public signal void price_went_up_signal(int by);

    public static int main(string[] args) {
        SignalsMain sm = new SignalsMain();

        sm.price_went_up_signal.connect((t, a) => {
            stdout.printf("%d\n", a);
        });

        sm.price_went_up_signal(5);
        sm.price_went_up_signal(1);

        return 0;
    }
}

