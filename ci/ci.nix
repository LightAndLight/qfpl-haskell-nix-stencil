{
  build =
    { system ? builtins.currentSystem }:
    let nixpkgs = import <nixpkgs> { inherit system; }; in
    import ../default.nix { inherit nixpkgs; };
}
