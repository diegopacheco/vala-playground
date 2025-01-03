class MyThread {
    private string name;
    private int count = 0;

    public MyThread (string name) {
        this.name = name;
    }

    public void thread_func () {
        while (true) {
            stdout.printf ("%s: %i\n", this.name, this.count);
            this.count++;
            Thread.usleep (Random.int_range (0, 200000));
        }
    }
}

void main () {
    var thread_a_data = new MyThread ("A");
    var thread_b_data = new MyThread ("B");

    // Start two threads
    var thread_a = new Thread<void> ("thread_a", thread_a_data.thread_func);
    var thread_b = new Thread<void> ("thread_b", thread_b_data.thread_func);

    // Wait for threads to finish (this will never happen in our case, but anyway)
    thread_a.join ();
    thread_b.join ();
}

