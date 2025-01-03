class Immortal : Object {
    ~Immortal() {
        stdout.printf("in destructor - bye bye cruel world\n");
    }
}

class Main.App : GLib.Object {
    public static int main(string[] args) {
        var immortal = new Immortal();
        return 0;
    }
} 