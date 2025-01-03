namespace utils{
    class Logger{
        public static void log(string message){
            stdout.printf("%s\n", message);
        }
    }
}

//using utils;

class Main.App : GLib.Object {
    public static int main(string[] args) {
        utils.Logger.log("Hello, World from Logger!");
        return 0;
    }
} 
