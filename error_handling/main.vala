public errordomain IOError {
    FILE_NOT_FOUND
}

class Main.App : GLib.Object {

    static void oops() throws IOError {
        throw new IOError.FILE_NOT_FOUND("Requested file could not be found.");
    }

    public static int main(string[] args) {
        try {
            oops();
        } catch (IOError e) {
            stdout.printf("Error: %s\n", e.message);
        }
        return 0;
    }

} 
