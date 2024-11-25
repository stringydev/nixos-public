{ pkgs, ... }: {

  # User profile packages
  home.packages = with pkgs; [

    # Utils
    ripgrep
    eza
    fzf
    fd
    lazygit

    # Python
    uv
  ];
}
