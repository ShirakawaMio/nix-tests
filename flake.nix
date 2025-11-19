{
  outputs = { nixpkgs, self }:
  {
    packages.x86_64-windows.libusb1 = nixpkgs.legacyPackages.x86_64-linux.pkgsCross.mingwW64.libusb1.overrideAttrs (old: rec {
      version = "1.0.30";
      src = nixpkgs.legacyPackages.x86_64-linux.fetchFromGitHub {
        owner = "libusb";
        repo = "libusb";
        rev = "9ceaa526fe728c11e408dcb7a9164d3c1d61ed9e";
        sha256 = "sha256-QjuVbRIwkMrGmLpm4Imfg+ebsG/YpjVywuCROxCrB68=";
      };
      configureFlags = [ "--enable-windows-hotplug" ];
    });
  };
}
