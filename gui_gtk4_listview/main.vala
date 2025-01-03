using Gtk;

public class Customer : Object {
    public string first_name { get; set; }
    public string last_name { get; set; }
    public int id { get; set; }

    public Customer (string first_name, string last_name, int id) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.id = id;
    }
}

public class ListViewSample : Gtk.Application {
    public ListViewSample () {
        Object (application_id: "com.example.ListViewSample");
    }

    protected override void activate () {
        var window = new ApplicationWindow (this);
        window.title = "ListView Sample";
        window.set_default_size (400, 300);

        var customers = new GLib.ListStore (typeof (Customer));
        customers.append (new Customer ("John", "Doe", 1));
        customers.append (new Customer ("Jane", "Smith", 2));

        var selection_model = new SingleSelection (customers);

        var list_view_factory = new SignalListItemFactory ();
        list_view_factory.setup.connect (on_list_view_setup);
        list_view_factory.bind.connect (on_list_view_bind);

        var list_view_header_factory = new SignalListItemFactory ();
        list_view_header_factory.setup.connect (on_list_view_header_setup);
        list_view_header_factory.bind.connect (on_list_view_header_bind);

        var list_view = new ListView (selection_model, list_view_factory);

        window.child = list_view;
        window.present ();
    }

    private void on_list_view_setup (SignalListItemFactory factory, GLib.Object list_item_obj) {
        var vbox = new Box (Orientation.VERTICAL, 4);
        var name_label = new Label ("");
        name_label.halign = Align.START;

        var id_label = new Label ("");
        id_label.halign = Align.START;

        vbox.append (name_label);
        vbox.append (id_label);
        ((ListItem) list_item_obj).child = vbox;
    }

    private void on_list_view_bind (SignalListItemFactory factory, GLib.Object list_item_obj) {
        var list_item = (ListItem) list_item_obj;
        var item_data = (Customer) list_item.item;
        var vbox = (Box) list_item.child;
        var name_label = (Label) vbox.get_first_child ();
        var id_label = (Label) name_label.get_next_sibling ();

        name_label.label = @"$(item_data.first_name) $(item_data.last_name)";
        id_label.label = @"ID: $(item_data.id)";
    }

    private void on_list_view_header_setup (SignalListItemFactory factory, GLib.Object list_header_obj) {
        var header_label = new Label ("");
        header_label.halign = Align.START;
        ((ListItem) list_header_obj).child = header_label;
    }

    private void on_list_view_header_bind (SignalListItemFactory factory, GLib.Object list_header_obj) {
        var list_header = (ListItem) list_header_obj;
        var header_label = (Label) list_header.child;
        header_label.label = "Customers";
    }

    public static int main (string[] args) {
        var app = new ListViewSample ();
        return app.run (args);
    }
}