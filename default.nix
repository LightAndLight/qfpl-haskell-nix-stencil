{ nixpkgs ? import <nixpkgs> {}
, compiler ? "default"
, doBenchmark ? false
, travis ? false
}:

let

  inherit (nixpkgs) pkgs;

  f = import ./qfpl-haskell-nix-stencil.nix;

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  variant = if doBenchmark then pkgs.haskell.lib.doBenchmark else pkgs.lib.id;

  stencil =
    haskellPackages.callPackage
      ./nix/stencil.nix
      (if travis
       then {}
       else { trifecta = haskellPackages.trifecta_1_7_1_1; });

  drv = variant (haskellPackages.callPackage f { inherit stencil; });

in

  drv
