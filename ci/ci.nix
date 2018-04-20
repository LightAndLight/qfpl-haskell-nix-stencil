{
  build_ghc7103 =
    { system ? builtins.currentSystem }:
    let nixpkgs = import <nixpkgs> { inherit system; }; in
    import ../default.nix { inherit nixpkgs; compiler = "ghc7103"; };

  build_ghc802 =
    { system ? builtins.currentSystem }:
    let nixpkgs = import <nixpkgs> { inherit system; }; in
    import ../default.nix { inherit nixpkgs; compiler = "ghc802"; };

  build_ghc822 =
    { system ? builtins.currentSystem }:
    let nixpkgs = import <nixpkgs> { inherit system; }; in
    import ../default.nix { inherit nixpkgs; compiler = "ghc822"; };

  build_ghc842 =
    { system ? builtins.currentSystem }:
    let nixpkgs = import <nixpkgs> { inherit system; }; in
    import ../default.nix { inherit nixpkgs; compiler = "ghc842"; };
}
