class SettingsWindow {
  private UIElement root;
  public boolean debug = false;  // Disable this if you don't want the green boundary rectangles.
  private String path;

  public SettingsWindow(UIElement root) {
    // root = new Canvas(this, #292929); // #292929 is corresponds to some black color
    this.root = root;
    root.AddComponent(new Panel(#292929));

    Button b;

    // --------------------------------------------------
    // --- PROFILE --- 
    // Profile settings
    UIElement profile_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.02, 0.95, 0.04));
    UIElement profile_label = new UIElement(root.applet, profile_div.transform, new Rect(0, 0, 1, 1));
    profile_label.AddComponent(new TextLabel("PROFILE SETTINGS", #BB86FC, 10));

    // STRICH
    UIElement strich1_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.04, 0.95, 0.05));
    UIElement strich1 = new UIElement(root.applet, strich1_div.transform, new Rect(0, 0.4, 1, 0.6));
    strich1.AddComponent(new Panel(#A8A8A8));

    // Profile name
    UIElement name_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.05, 0.95, 0.09));
    UIElement profile_name = new UIElement(root.applet, name_div.transform, new Rect(0.05, 0, 0.6, 1));
    profile_name.AddComponent(new TextLabel("Max Mustermann", #FFFFFF, 20)); 
    UIElement change_name_button = new UIElement(root.applet, name_div.transform, new Rect(0.6, 0.1, 0.95, 0.9));
    Button name_changer = new Button("CHANGE NAME", change_name_button, "Name");
    name_changer.set_textsize(10);
    change_name_button.AddComponent(name_changer);
    change_name_button.AddComponent(new Collider());
    // TO DO: IMPLEMENT NAME() IN CREATEROOM CLASS OF COMPONENT

    // Profile picture
    UIElement picture_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.09, 0.95, 0.3));
    UIElement picture_button = new UIElement(root.applet, picture_div.transform, new Rect(-100, 0, 100, 200), new Rect(0.5, 0, 0.5, 0));
    PImage img = loadImage("images/baseline_account.png");
    picture_button.AddComponent(new Button("", picture_button, "Picture", img, img, img));
    picture_button.AddComponent(new Collider());
    // TO DO: IMPLEMENT PICTURE() IN CREATEROOM CLASS OF COMPONENT

    // Button for changing picture
    UIElement change_picture_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.3, 0.95, 0.34));
    UIElement change_picture_button = new UIElement(root.applet, change_picture_div.transform, new Rect(0.6, 0.1, 0.95, 0.9));
    Button picture_changer = new Button("CHANGE", change_picture_button, "Picture");
    picture_changer.set_textsize(10);
    change_picture_button.AddComponent(picture_changer);
    change_picture_button.AddComponent(new Collider());
    /// TO DO: IMPLEMENT PICTURE() IN CREATEROOM CLASS OF COMPONENT

    // --------------------------------------------------
    // --- MICROPHONE --- 
    // Microphone settings
    UIElement microphone_title_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.4, 0.95, 0.42));
    UIElement microphone_label = new UIElement(root.applet, microphone_title_div.transform, new Rect(0, 0, 1, 1));
    microphone_label.AddComponent(new TextLabel("MICROPHONE SETTINGS", #BB86FC, 10));

    // STRICH
    UIElement strich2_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.42, 0.95, 0.43));
    UIElement strich2 = new UIElement(root.applet, strich2_div.transform, new Rect(0, 0.4, 1, 0.6));
    strich2.AddComponent(new Panel(#A8A8A8));

    // Microphone
    UIElement mic_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.43, 0.95, 0.47));
    mic_div.AddComponent(new Panel(#313131));
    UIElement microphone = new UIElement(root.applet, mic_div.transform, new Rect(0.05, 0, 0.6, 1));
    microphone.AddComponent(new TextLabel("Default Microphone", #FFFFFF, 14)); 

    // Microphone Button
    UIElement microphone_button = new UIElement(root.applet, mic_div.transform, new Rect(-45, -40, -10, -5), new Rect(1, 1, 1, 1));
    microphone_button.AddComponent(new Button("", microphone_button, "Microphone", loadImage("images/dropdown_default.png"), loadImage("images/dropdown_click.png"), loadImage("images/dropdown_hover.png")));
    microphone_button.AddComponent(new Collider());
    // TO DO: IMPLEMENT MICROPHONE() IN CREATEROOM CLASS OF COMPONENT

    // --------------------------------------------------
    // --- SPEAKER --- 
    // Speaker settings
    UIElement speaker_title_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.5, 0.95, 0.52));
    UIElement speaker_label = new UIElement(root.applet, speaker_title_div.transform, new Rect(0, 0, 1, 1));
    speaker_label.AddComponent(new TextLabel("SPEAKER SETTINGS", #BB86FC, 10));

    // STRICH
    UIElement strich3_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.52, 0.95, 0.53));
    UIElement strich3 = new UIElement(root.applet, strich3_div.transform, new Rect(0, 0.4, 1, 0.6));
    strich3.AddComponent(new Panel(#A8A8A8));

    // Speaker
    UIElement speaker_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.53, 0.95, 0.57));
    speaker_div.AddComponent(new Panel(#313131));
    UIElement speaker = new UIElement(root.applet, speaker_div.transform, new Rect(0.05, 0, 0.6, 1));
    speaker.AddComponent(new TextLabel("Stereo Headphones", #FFFFFF, 14)); 

    // Speaker Button
    UIElement speaker_button = new UIElement(root.applet, speaker_div.transform, new Rect(-45, -40, -10, -5), new Rect(1, 1, 1, 1));
    speaker_button.AddComponent(new Button("", speaker_button, "Speaker", loadImage("images/dropdown_default.png"), loadImage("images/dropdown_click.png"), loadImage("images/dropdown_hover.png")));
    speaker_button.AddComponent(new Collider());
    // TO DO: IMPLEMENT SPEAKER() IN CREATEROOM CLASS OF COMPONENT

    // --------------------------------------------------
    // --- VIDEO --- 
    // Video settings
    UIElement video_title_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.6, 0.95, 0.62));
    UIElement video_label = new UIElement(root.applet, video_title_div.transform, new Rect(0, 0, 1, 1));
    video_label.AddComponent(new TextLabel("VIDEO SETTINGS", #BB86FC, 10));

    // STRICH
    UIElement strich4_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.62, 0.95, 0.63));
    UIElement strich4 = new UIElement(root.applet, strich4_div.transform, new Rect(0, 0.4, 1, 0.6));
    strich4.AddComponent(new Panel(#A8A8A8));

    // Video
    UIElement video_div = new UIElement(root.applet, root.transform, new Rect(0.05, 0.63, 0.95, 0.67));
    video_div.AddComponent(new Panel(#313131));
    UIElement video = new UIElement(root.applet, video_div.transform, new Rect(0.05, 0, 0.6, 1));
    video.AddComponent(new TextLabel("Webcam (1080p)", #FFFFFF, 14)); 

    // Video Button
    UIElement video_button = new UIElement(root.applet, video_div.transform, new Rect(-45, -40, -10, -5), new Rect(1, 1, 1, 1));
    video_button.AddComponent(new Button("", video_button, "Video", loadImage("images/dropdown_default.png"), loadImage("images/dropdown_click.png"), loadImage("images/dropdown_hover.png")));
    video_button.AddComponent(new Collider());
    // TO DO: IMPLEMENT VIDEO() IN CREATEROOM CLASS OF COMPONENT

    // --------------------------------------------------
    // --- FOOTER --- 
    UIElement footer = new UIElement(root.applet, root.transform, new Rect(0, -88, 0, 0), new Rect(0, 1, 1, 1));
    footer.AddComponent(new Panel(#121212));

    // Button that saves the changed settings
    UIElement save_button = new UIElement(root.applet, footer.transform, new Rect(-130, -66, -86, -22), new Rect(1, 1, 1, 1));
    save_button.AddComponent(new Button("", save_button, "Save", loadImage("images/save_default.png"), loadImage("images/save_click.png"), loadImage("images/save_hover.png")));
    save_button.AddComponent(new Collider());
    // TO DO: IMPLEMENT SAVE() IN CREATEROOM CLASS OF COMPONENT

    // Button that closes the settings
    UIElement close_button = new UIElement(root.applet, footer.transform, new Rect(-66, -66, -22, -22), new Rect(1, 1, 1, 1));
    b = new Button("", null, "", loadImage("images/back_default.png"), loadImage("images/back_click.png"), loadImage("images/back_hover.png"));
    b.SetReleaseMessage(close_button, "CloseSettings");
    close_button.AddComponent(b);
    close_button.AddComponent(new Collider());
    close_button.AddComponent(new UtilFunctions());
    // TO DO: IMPLEMENT CLOSE() IN CREATEROOM CLASS OF COMPONENT
  }
}