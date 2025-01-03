public class Button : Object {

    public Button() {
        stdout.printf("Button()\n");
    }

    public Button.with_label(string label) {
        stdout.printf("Button.with_label(%s)\n", label);
    }

    public Button.from_stock(string stock_id) {
        stdout.printf("Button.from_stock(%s)\n", stock_id);
    }
}

class Main.App : GLib.Object {
    public static int main(string[] args) {
        var button1 = new Button();
        var button2 = new Button.with_label("Hello");
        var button3 = new Button.from_stock("gtk-ok");
        return 0;
    }
} 
