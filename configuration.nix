# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{

  ### Modules
  imports =
    [
      ./hardware-configuration.nix
      ./modules/misc.nix
      ./modules/config.nix
    ];


  ### Kernel
  boot.initrd.kernelModules =
    [
    ];


  ### Boot loader
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";


  ### Networking
  networking.hostName = "nixos";
  networking.wireless.enable = true;


  ### Filesystems to Mount


  ### Services
  services.openssh.enable = true;

  services.locate.enable = true;
  services.nixosManual.showManual = true;

  services.xserver.enable = true;
  services.xserver.displayManager.kdm.enable = true;
  services.xserver.desktopManager.kde4.enable = true;


  ### Security


  ### Users
  users = {
    extraGroups = [ { name = "chexxor"; } { name = "dev"; } ];
    extraUsers  = [ {
      description = "chexxor";
      name        = "chexxor";
      group       = "chexxor";
      extraGroups = [ "users" "wheel" ];
      home        = "/home/chexxor";
      createHome  = true;
      useDefaultShell = true;
    } ];
  };

}
