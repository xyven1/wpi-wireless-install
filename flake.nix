{
  description = "WPI wireless install script";
  inputs =
    {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    };
  outputs = { self, nixpkgs, ... }:
    {
      nixpkgs.overlays = [
        (self: super: {
          wpi = super.callPackage ./default.nix { };
        })
      ];
    };
}
