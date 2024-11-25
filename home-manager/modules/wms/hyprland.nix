{
  programs.kitty.enable = true; # required for the default Hyprland config
  
  wayland.windowManager.hyprland = {
    enable =  true;
    xwayland.enable = true;

    settings = {
      "mainMod" = "SUPER"

      monitor = ",1920x1080@75,auto,1";

      env = [
        "XDG_CURRENT_DESKTOP,Hyprland"
	"XDG_SESSION_TYPE,wayland"
	"XDG_SESSION_DESKTOP,Hyprland"
      ];

      debug = {
        disable_logs = false;
	enable_stdout_logs = true;
      };
    };
}
