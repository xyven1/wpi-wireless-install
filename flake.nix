{
  description = "WPI wireless install script";
  inputs =
    {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    };
  outputs = { nixpkgs, ... }:
    {
      overlays = {
        default = final: prev:
          {
            wpi-wireless-install = prev.callPackage ./. { };
          };
      };
      packages.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.callPackage ./. { };
    };
}
