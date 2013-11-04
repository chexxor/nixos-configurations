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
    { label = "swap"; }
  ];

  environment.systemPackages = with pkgs; [
    openssl
    xclip
    gparted

    git
  ];

  time.timeZone = "Asia/Taipei";

}
