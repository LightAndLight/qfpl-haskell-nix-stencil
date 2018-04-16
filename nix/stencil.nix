{ mkDerivation, base, containers, directory, fetchgit, free, mtl
, optparse-applicative, parsers, stdenv, template-haskell, text
, th-lift-instances, trifecta, turtle
}:
mkDerivation {
  pname = "stencil";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/lightandlight/stencil";
    sha256 = "1f7fcjr7a54hkmi9la8szv8l9297gjbbylwrgix8l5y6iyk1hklg";
    rev = "8414e4421ae43f3682100ea6fa0bed79f40c06da";
  };
  libraryHaskellDepends = [
    base containers directory free mtl optparse-applicative parsers
    template-haskell text th-lift-instances trifecta turtle
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
