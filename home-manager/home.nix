{
  imports = [
    ./zsh.nix
    ./packages.nix
    ./modules/bundle.nix
  ];
  
  home = {
    username = "stringydev";
    homeDirectory = "/home/stringydev";
    stateVersion = "24.05";
  };

  # Ghostty terminal
  xdg.configFile = {
    "ghostty/config".text = builtins.readFile ./ghostty;
  };

  # let home manager install and manager itself
  programs.home-manager.enable = true;
}
