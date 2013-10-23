{ config, pkgs, ...  }:

{
  i18n = {
    defaultLocale = "en_US.UTF-8";
    consoleFont = "lat9w-16";
    consoleKeyMap = "us";
  };

  powerManagement = {
    enable = true;
  };

  hardware.pulseaudio = {
    enable = false;
  };

  environment = {
    variables = {};
    shellAliases = {};
    shells = [];
  };

  swapDevices = [
    #{ device = "/dev/sda3"; size = 1024; }
    #{ labell = "swap"; swap = 2048; }
  ];

  environment.systemPackages = with pkgs; [
    git
    xclip
  ];

  time.timeZone = "Asia/Taipei";

}
