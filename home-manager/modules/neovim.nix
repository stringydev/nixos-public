{ pkgs, ... }: {
  programs.neovim = {
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      rose-pine
      telescope-nvim
    ];
  };
}
