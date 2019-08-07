namespace FGtk {

    public class Button : Gtk.Button {

        public delegate void ButtonActions (Gtk.Button widget);

        public Button (ButtonActions actions, Gtk.Widget? widget = null) {
            if (widget != null) this.add (widget);
            actions (this);
        }

        public Button.with_label (string label) {
            this.label = label;
        }

    }

}
