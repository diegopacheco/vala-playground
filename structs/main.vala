class Main.App : GLib.Object {

    struct Color {
        public double red;
        public double green;
        public double blue;
    }

    public static int main(string[] args) {

        Color c1 = Color();  // or Color c1 = {};
        Color c2 = { 0.5, 0.5, 1.0 };
        Color c3 = Color() {
            red = 0.5,
            green = 0.5,
            blue = 1.0
        };

        stdout.printf("Color1: (%f, %f, %f)\n", c1.red, c1.green, c1.blue);
        stdout.printf("Color2: (%f, %f, %f)\n", c2.red, c2.green, c2.blue);
        stdout.printf("Color3: (%f, %f, %f)\n", c3.red, c3.green, c3.blue);
        return 0;
    }
} 
