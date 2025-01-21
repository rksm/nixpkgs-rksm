{ system, nixpkgs }:
let
  pkgs = import nixpkgs { inherit system; };
in
{
  uniclip = pkgs.callPackage ./uniclip.nix { };
}
