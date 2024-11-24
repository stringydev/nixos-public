{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    # Desktop apps
    chromium

    # CLI tools
    git 
    
    # Other
    home-manager
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
  ];
}
   

