namespace FGtk {

    public class Window : Gtk.Window {

        public delegate void WindowActions (Gtk.Window widget);

        public Window (WindowActions actions, Gtk.Widget widget) {
            this.add (widget);
            actions (this);
        }

    }

}
