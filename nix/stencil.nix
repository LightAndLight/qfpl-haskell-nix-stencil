{ mkDerivation, aeson-pretty, base, bytestring, containers
, directory, fetchgit, free, mtl, optparse-applicative, parsers
, process, stdenv, template-haskell, text, th-lift-instances
, trifecta, yaml
}:
mkDerivation {
  pname = "stencil";
  version = "0.1.0.0";
  src = fetchgit {
    url = "https://github.com/lightandlight/stencil";
    sha256 = "167dcnryrgb6x9qkr3hxp466qswyli5rphc4rr562708jxs7rq13";
    rev = "b1e7fe30b0695ae421445a4d127bbd1dccaba1b4";
  };
  libraryHaskellDepends = [
    aeson-pretty base bytestring containers directory free mtl
    optparse-applicative parsers process template-haskell text
    th-lift-instances trifecta yaml
  ];
  description = "Shareable project templates";
  license = stdenv.lib.licenses.bsd3;
}
