{
  services.xserver = {
    enable = true;
    layout = "gb";
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };	
}
