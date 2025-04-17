{ system, nixpkgs }:
let
  pkgs = import nixpkgs { inherit system; };
in
{
  uniclip = pkgs.callPackage ./uniclip { };
  unsure = pkgs.callPackage ./unsure { };
}
