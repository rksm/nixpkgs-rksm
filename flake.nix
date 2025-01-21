{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      supported-systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
    in

    {
      packages = builtins.listToAttrs (map
        (system:
          {
            name = system;
            value = import ./. { inherit system nixpkgs; };
          }
        )
        supported-systems);
    };
}
