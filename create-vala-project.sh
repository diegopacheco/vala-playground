#!/bin/bash

echo "class Main.App : GLib.Object {
    public static int main(string[] args) {
        stdout.printf(\"Hello World\n\");
        return 0;
    }
} " > main.vala

echo "#!/bin/bash

valac main.vala
./main
rm ./main" > run.sh
chmod +x ./run.sh

echo "### Run
\`\`\`bash
./run.sh
\`\`\`" > README.md