{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium

    # CLI tools
    git 
    
    # Other
    home-manager
    vim
    kitty
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
  ];
}
   

