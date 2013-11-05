{ config, pkgs, ...  }:

{

  config.security.ssl.genSSLCert = {
    enable = true;
    selfSignedCrt = true;
    crtOutFile = /etc/ssl/host.crt;
    keyOutFile = /etc/ssl/host.key;
    keyPassword = "";
  };

  config.services.httpd = {

    ## Admin
    adminAddr = "chexxor@gmail.com";
    enable    = true;

    ## Security
    enableSSL      = true;
    sslServerCert  = /etc/ssl/host.crt;
    sslServerKey   = /etc/ssl/host.key;
    globalRedirect = "";
    user           = "wwwrun";
    group          = "wwwrun";
    hostName       = "localhost";

    ## Artifacts
    logDir            = "/var/log/httpd";
    logFormat         = "common";
    logPerVirtualHost = true;
    stateDir          = "/run/httpd";

    ## Request Handling
    maxClients            = 150;
    maxRequestsPerChild   = 0;
    multiProcessingModule = "prefork";

    ## Request Listening
    # port          = 0;
    serverAliases = [ ];
    virtualHosts  = [ ];

    ## Target Content
    # documentRoot = "/data/nix-binary-cache";
    servedDirs  = [ ];
    servedFiles = [ ];
    
  };

}
