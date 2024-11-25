{ pkgs, ... }: {

  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium

    # CLI tools
    git 
    
    # Other
    home-manager
    vim
    
    # Wayland stuff
    xwayland
    wl-clipboard

    # Window manager stuff
    hyprland
    seatd
    xdg-desktop-portal-hyprland
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
  ];
}
   

