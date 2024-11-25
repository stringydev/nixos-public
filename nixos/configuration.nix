# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ inputs, ... }: {

  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/bundle.nix
  ];

  disabledModules = [
    ./modules/xserver.nix
  ];

  # Set your time zone/
  time.timeZone = "Europe/London";

  # Enable flakes.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05"; # Don't change it bro
}  

