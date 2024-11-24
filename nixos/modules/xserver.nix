{
  services.xserver = {
    enable = true;
    layout = "gb";
    desktopManager = {
      xfce.enable = true;
    };
    displayManager.defaultSession = "xfce";
  };
}
