using FGtk;

int main (string[] args) {
    Gtk.init (ref args);

    new Window (
        (widget) => {
            widget.title = "First FGtk Program";
            widget.border_width = 10;
            widget.window_position = Gtk.WindowPosition.CENTER;
            widget.set_default_size (350, 70);
            widget.destroy.connect (Gtk.main_quit);
            widget.show_all ();
        },

        new Box (
            // here you have a lambda function that
            // modifies the container's properties
            (widget) => {
                widget.orientation = Gtk.Orientation.VERTICAL;
                widget.spacing = 6;
                widget.get_style_context ().add_class ("StyleClassForBoxes");
                widget.margin = 12;
            },

            // here you have an array with all its children
            {
                new Button (
                    (widget) => {
                        widget.label = "";
                        widget.hexpand = false;
                        widget.vexpand = false;
                        widget.get_style_context ().add_class ("flat");
                        widget.clicked.connect (() => {
                            //some action
                        });
                    },

                    // here there is no {} (array braces), because Button is a
                    // Gtk.Bin, which means it can only hold one widget at a time.
                    new Gtk.Image.from_icon_name ("distributor-logo-symbolic", Gtk.IconSize.BUTTON)
                ),

                new Box (
                    (widget) => {
                        widget.orientation = Gtk.Orientation.HORIZONTAL;
                        widget.spacing = 6;
                        widget.get_style_context ().add_class ("StyleClassForBoxes");
                    },

                    {
                        new Button (
                            (widget) => {
                                widget.label = "Hello, World!";
                                widget.clicked.connect (() => {
                                    //some action
                                    some_function ();
                                });
                            }
                        ),

                        new Button.with_label ("Yeet")
                    }
                )
            }
        )
    );

    Gtk.main ();
    return 0;
}

void some_function () {
    //do something
    print ("YEET!\n");
}
