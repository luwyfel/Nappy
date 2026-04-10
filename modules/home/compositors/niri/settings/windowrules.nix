[
  {
    matches = [{}];
    geometry-corner-radius = {
      top-left = 8.0;
	    top-right = 8.0;
	    bottom-left = 8.0;
	    bottom-right = 8.0;
    };
    clip-to-geometry = true;
  }
  {
    matches = [
      {app-id = "kitty";}
    ];
    default-column-width.proportion = 0.66;
  }
  {
    matches = [
      {app-id = "xdg-desktop-portal-gtk";}
      {title = "^Picture-in-Picture$";}
      {title = "^Friends List$";
       app-id = "^steam$";}
    ];
    open-floating = true;
  }
]
