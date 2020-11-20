class RoomWindow extends PApplet {
  private Canvas root;
  public boolean debug = false;  // Disable this if you don't want the green boundary rectangles
  private String path;

  public void settings() {
    size(1400, 1000);
    path = args[0];
  }

  public void setup() {
    root = new Canvas(this, #292929);
    Button b;

    UIElement footer = new UIElement(this, root.transform, new Rect(0, -88, 0, 0), new Rect(0, 1, 1, 1));
    footer.AddComponent(new Panel(#121212));

    UIElement user_canvas = new UIElement(this, root.transform, new Rect(0, 0, 0, -88), new Rect(0, 0, 1, 1));

    UIElement room_name_label = new UIElement(this, footer.transform, new Rect(16, 0, 260, 0), new Rect(0, 0.6, 0, 0.9));
    room_name_label.AddComponent(new TextLabel("Human Computer Interaction", #FFFFFF, 16));

    UIElement room_id_label = new UIElement(this, footer.transform, new Rect(16, 0, 260, 0), new Rect(0, 0.4, 0, 0.6));
    room_id_label.AddComponent(new TextLabel("ROOM ID: 1234", #707070, 10));

    UIElement create_b_room_button = new UIElement(this, footer.transform, new Rect(16, -24, 260, 24), new Rect(0, 0, 0, 0));
    b = new Button("CREATE BREAKOUT ROOM");
    b.SetClickMessage(create_b_room_button, "CreateBreakoutWindow", (PApplet)this, user_canvas);
    create_b_room_button.AddComponent(b);
    create_b_room_button.AddComponent(new Collider());
    create_b_room_button.AddComponent(new UtilFunctions());



    UIElement user_a = new UIElement(this, "max", user_canvas.transform, new Rect(-48, -48, 48, 48), new Rect(.5, .5, .5, .5));
    user_a.AddComponent(new UserBubble("Max Mustermann"));
    user_a.AddComponent(new Collider());

    UIElement user_b = new UIElement(this, "pepe", user_canvas.transform, new Rect(-48, -48, 48, 48), new Rect(.3, .5, .3, .5));
    user_b.AddComponent(new UserBubble("Pepe the frog", loadImage(path + "/images/pepe.png"), 100));
    user_b.AddComponent(new Collider());
    // Note: If you load an image from disk, take the absolute path, not the relative path. PApplet messes with the relative path in Processing 3.

    println("initialized room UI");
  }

  public void draw() {
    root.Run(debug);
  }

  public void exit() {
    dispose();
  }
}
