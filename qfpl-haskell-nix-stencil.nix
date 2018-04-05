{ mkDerivation, base, stdenv, stencil, text, turtle }:
mkDerivation {
  pname = "qfpl-haskell-nix-stencil";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base stencil text turtle ];
  license = stdenv.lib.licenses.bsd3;
}
