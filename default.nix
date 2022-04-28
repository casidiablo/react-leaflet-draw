let
  pkgs = import <nixpkgs> {};
  stdenv = pkgs.stdenv;

in stdenv.mkDerivation rec {
  name = "service-auth";
  buildInputs = [
    pkgs.nodejs-16_x
    pkgs.yarn
    pkgs.adoptopenjdk-hotspot-bin-8
  ];

  shellHook = ''
    export JAVA_HOME=${pkgs.adoptopenjdk-hotspot-bin-8}
  '';
}
