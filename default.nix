
{ lib, python3Packages, pkgs }:
python3Packages.buildPythonApplication {
  pname = "eduroam-install";
  version = "0.1.0";
  src = ./.;
  packages = [ "eduroam_install" ];
  nativeBuildInputs = [ pkgs.openssl ];
  doCheck = false;
  propagatedBuildInputs = [ pkgs.openssl python3Packages.dbus-python ];
  meta = with lib; {
    description = "A flake encapsulating the eduroam wireless installation script";
    license = licenses.mit;
  };
}
