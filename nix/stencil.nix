{ mkDerivation, base, containers, directory, fetchgit, free, mtl
, optparse-applicative, parsers, stdenv, template-haskell, text
, th-lift-instances, trifecta, turtle
}:
mkDerivation {
  pname = "stencil";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/lightandlight/stencil";
    sha256 = "193yphcbsf6svd9jkl6x9qig4yqj73mscfarhp7931d8y8dnb5br";
    rev = "deb9780707890cb24f1ca59fa775e5de63de7ea5";
  };
  libraryHaskellDepends = [
    base containers directory free mtl optparse-applicative parsers
    template-haskell text th-lift-instances trifecta turtle
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
