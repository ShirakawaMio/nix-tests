{
  imports = [
    ./configuration.nix
  ];

  # Make it use predictable interface names starting with eth0
  boot.kernelParams = [ "net.ifnames=0" ];

  networking = {
    defaultGateway = "10.0.0.1";
    # Use google's public DNS server
    nameservers = [ "8.8.8.8" ];
    interfaces.eth0 = {
      ipAddress = "10.0.0.59";
      prefixLength = 24;
    };
  };

  kexec.autoReboot = false;

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8a+jX5VNYM7gUffXcho9e1LKuLYfTU7nNlZ8PPVgw8HYJG1DKf2ScDYOzAYMDuDRVL9L9k1a9+aBjQJllrM6M+A/1hQqN2om2jw7PKtp10I04BoJMSTtMRCMptsH1qnFi4Ac59dtkek+ZrEl1jkdAk5ghDmZjFipvLQ/5lJ5bWcj7UngCQuclDXlxDH44MaUA6ivtYD2xyL2/z8BCIyKxgR40rZtMUsGlYtu3of3cZiSAbXePJAyZsGI8v85jDqRlQYdhCG0RoeINyGIPqjt9cc/voCIxt+JO2XY3Fg4YFGO9pYNQHcFSzcIO40V6fN6aiBafVKkfBHszj5lYGhBEi4jdTm8nEaq0r10so0RydmyGgN2Lw/mqIfT2qf5D/jtUBjZTexc21/nD+oD+OqyRaTX2YxpMOlrxOxIk6hH1VApmkPEWatEPqnYRfARESXoGQ2ty//0uFQe2D3TUcQGW3x+rJVpvhZnNCmztu/63b85pBObfm1IqTEGJfcqJTC7IvJbRiM8H16sf1IOvULQsCcj6rFJ5JYre+PN2U/tT4NBJ1P0bIEO/PTZsMKmLZtZAQpWihK3SxV15IapHgIwKsqTPlB6v34GmTcVPCvF+6aJCXJxcabtdiSnNZoEk0+JhczGofF7TIYNqhEa/7bVDSfAkBwcLcsqDVDFRgCd1Cw== abcgfsmile@gmail.com"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKLFjze3nbx0dYxFtnyXd5rlOkCroQzdBX+avTKNJQ19 mio@ubuntu-8gb-fsn1-1"
  ];
}
