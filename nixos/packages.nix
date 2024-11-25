{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium

    # CLI tools
    git 
    
    # Other
    vim
    kitty 
    # Window manager stuff
    seatd
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
  ];
}
   

