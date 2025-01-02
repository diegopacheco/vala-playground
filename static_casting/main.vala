class Main.App : GLib.Object {
    public static int main(string[] args) {
        int i = 10;
        float j = (float) i;

        stdout.printf("j == %f \n",j);
        return 0;
    }
} 
