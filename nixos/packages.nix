{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium

    # CLI tools
    git 
    
    # Other
    home-manager
    vim

    # Window manager stuff
    xdg-desktop-portal-hyprland
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
  ];
}
   

