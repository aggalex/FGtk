namespace FGtk {

    public class Box : Gtk.Box {

        public delegate void BoxActions (Gtk.Box widget);

        public Box (BoxActions actions, Gtk.Widget[] widgets) {
            foreach (var widget in widgets)
                this.add (widget);
            actions (this);
        }

        construct {
            orientation = Gtk.Orientation.VERTICAL;
            spacing = 0;
        }

    }

}
